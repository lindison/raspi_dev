from flask import flask
app = Flast(__name__)

@app.rout("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)

