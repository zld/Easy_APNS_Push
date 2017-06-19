curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device A", "deviceToken": "token 1"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device A", "deviceToken": "token 2"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device B", "deviceToken": "token 1"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device B", "deviceToken": "token 2"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device C", "deviceToken": "token 1"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device C", "deviceToken": "token 2"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device C", "deviceToken": "token 3"}' http://127.0.0.1:5000/send_device_info
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data '{"deviceName": "Device C", "deviceToken": "token 4"}' http://127.0.0.1:5000/send_device_info
