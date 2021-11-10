import os
import requests
r = requests.get(os.environ['URL'])
print(r.status_code)