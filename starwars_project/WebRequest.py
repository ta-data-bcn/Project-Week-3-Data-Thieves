import requests
from bs4 import BeautifulSoup

class WebRequest:
    def __init__(self):
        self.status = 404
        self.response = False
        self.res = ''
        self.soup = ''
    
    def request_url(self, url):
        h = {'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36'}
        self.response = requests.get(url, headers=h)
        self.status = self.response.status_code
        if self.status == 200:
            self.res = self.response.text
            self.soup = BeautifulSoup(self.res, 'html.parser')
    
    def get_elements(self, soup, elem_name):
        elems = soup.find_all(elem_name)
        return [elem.extract() for elem in elems]

    def get_text_in_elements_from_list(self, res, elem_name):
        elems = []
        for elem in res:
            tmp = elem.find_all(elem_name)
            for t in tmp:
                elems.append(t.text)
        return elems
