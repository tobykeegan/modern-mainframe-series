from zoautil_py import opercmd, zsystem
import json
import time

# Points to wherever your .json is stored
JSON_PATH = 'mq03.json'

RETRY_INTERVAL = 5
MAX_RETRIES = 6  # 6 x 5 = 30 seconds

with open(JSON_PATH, 'r') as json_file:

    data = json.load(json_file)

    # assign the contents of the json to variables
    start_cmd = data['start_cmd']
    up_msg = data['up_msg']

# execute the start command
zos_response = opercmd.execute(start_cmd)

for _ in range(MAX_RETRIES):

    if up_msg in zsystem.read_console():
        print("Up message received!")
        break

    time.sleep(RETRY_INTERVAL)
else:
    print("The up message wasn't received.")
