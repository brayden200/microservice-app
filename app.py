from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify(message="Welcome to the Flask Microservice deployed on AWS AppRunner!")

@app.route('/status')
def status():
    return jsonify(status="Service is running smoothly!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
