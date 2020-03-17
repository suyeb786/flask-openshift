from flask import Flask
from flask_api import status
app = Flask(__name__)

@app.route("/")
def index():
    return "Index!", status.HTTP_404_NOT_FOUND

@app.route("/hello")
def hello():
    return "Hello World!", status.HTTP_200_OK
    
@app.route('/hello/<name>')
def name(name):
    return "Hello "+name, status.HTTP_202_ACCEPTED 

if __name__ == "__main__":
    app.run(host='0.0.0.0')