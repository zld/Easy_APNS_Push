from flask import Flask, request, render_template, make_response
from pyapns import configure, provision, notify

app = Flask(__name__)

device_name_list = []
device_info = {}

@app.route('/')
def index():
    return render_template('index.html', device_names=device_name_list, device_info=device_info)

@app.route('/send_device_info', methods=['POST'])
def send_device_info():
    device_token = None

    device_name = request.json['deviceName']

    if request.json.has_key('deviceToken'):
        device_token = request.json['deviceToken']

    if not device_name_list.__contains__(device_name):
        device_name_list.append(device_name)

    if device_info.has_key(device_name) and device_token:
        tokens = set(device_info[device_name])
        tokens.add(device_token)
        device_info[device_name] = tokens
    else:
        tokens = set()
        if device_token:
            tokens.add(device_token)
        device_info[device_name] = tokens

    resp = make_response('{"success": 1}')
    resp.headers['Content-Type'] = "application/json"
    return resp

def send_apns():
    configure({'HOST': 'http://localhost:7077/'})
    provision('myapp', open('cert.pem').read(), 'sandbox')
    notify('myapp', 'hexlified_token_str', {'aps': {'alert': 'Hello!'}})

if __name__ == '__main__':
    app.run()
