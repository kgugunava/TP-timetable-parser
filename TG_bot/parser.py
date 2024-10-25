from urllib.parse import urlencode
import requests
from CONFIG import *

class GetDownloadFile:

    def __init__(self):
        pass

    def download(self):
        base_url = 'https://cloud-api.yandex.net/v1/disk/public/resources/download?'
        final_url = base_url + urlencode(dict(public_key=ya_url))
        response = requests.get(final_url)
        download_url = response.json()['href']
        download_response = requests.get(download_url)
        with open('timetable.xlsx', 'wb') as f:
            f.write(download_response.content)

