from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "This is a sample Flask App"

@app.home("/home")
def home():
    return "This is the home page"

if __name__ == "__main__":
	app.run(host = '0.0.0.0')