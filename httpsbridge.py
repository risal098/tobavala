from flask import Flask


app=Flask(__name__)

@app.route("/",methods=["GET"])
def index():
   return "{'ngen':7}"
app.run("localhost",port=7100)
