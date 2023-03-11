from flask import Flask, make_response, request
import redis
import os

# Flask Steup
app = Flask(__name__)
   
@app.route('/echo', methods=['GET', 'POST'])
def echo():
    if request.method == 'POST':
        headers = request.headers
        return "You posted: " + str(request.data) + " Request headers: " + str(headers)
    if request.method == 'GET':
        headers = request.headers
        return "You getted: " + str(request.data) + " Request headers: " + str(headers)

# Redis Setup

redis_host = os.getenv('REDISHOST')
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

if __name__ == '__main__':
    app.run(host='0.0.0.0')
    hello_redis()