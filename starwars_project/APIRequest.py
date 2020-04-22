import requests

class APIRequest:
    def __init__(self, base_url):
        self.base_url = base_url
        self.response = ''
        self.status = 0
        self.result = ''

    def new_request(self, extension, parameters={}):
        self.response = requests.get(self.base_url + extension, params=parameters)
        self.status = self.response.status_code
        if self.status == 200:
            self.result = self.response.json()
        return self.status