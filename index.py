from flask import Flask
app = Flask(__name__)

@app.route("/")
def index():
    return "Index!"

@app.route("/hello")
def hello():
    return "Hello World!"
    
@app.route('/hello/<name>')
def name(name):
    return "Hello "+name 

if __name__ == "__main__":
    app.run(host='0.0.0.0')