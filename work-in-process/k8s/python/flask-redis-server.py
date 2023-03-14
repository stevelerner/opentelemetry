from flask import Flask, make_response, request
import redis
import os

# Redis Setup

redis_host = os.getenv('REDIS_SERVICE_HOST')
redis_port = 6379
redis_password = ""

def hello_redis():  # simple redis example that will be picked up by auto-instrumentation
    try:
        r = redis.StrictRedis(host=redis_host, port=redis_port, password=redis_password, decode_responses=True)
        r.set("msg:hello", "Hello Redis!!!")
        msg = r.get("msg:hello")
        print(msg)
    except Exception as e:
        print(e)

# Flask Steup
app = Flask(__name__)
   
@app.route('/echo', methods=['GET', 'POST'])
def echo():
    if request.method == 'POST':
        hello_redis()
        headers = request.headers
        return "You posted: " + str(request.data) + " Request headers: " + str(headers)
    if request.method == 'GET':
        hello_redis()
        headers = request.headers
        return "You getted: " + str(request.data) + " Request headers: " + str(headers)

if __name__ == '__main__':
    app.run(host='0.0.0.0')