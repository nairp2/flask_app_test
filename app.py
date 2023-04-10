from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():

    result = "Python Flask application is executed on jenkins pipeline\n"
    print(result)
    return result

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port="5000", threaded=False)