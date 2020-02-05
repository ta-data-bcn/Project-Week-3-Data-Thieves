from WebRequest import WebRequest
import pandas as pd
import re




if __name__ == '__main__':
    wr = WebRequest()
    wr.request_url('https://www.latimes.com/projects/star-wars-most-talkative-characters/')
    if wr.status == 200:
        # extract film names (header of each section)
        names_res = wr.soup.find_all('section', {'class':'section4'})
        films = wr.get_text_in_elements_from_list(names_res, 'h4')
        # extract sections after each header containing relation character-words
        chars_in_film = wr.soup.find_all('div', {'class':'emoji-chart'})
        # = wr.get_text_in_elements_from_list(chars_in_film, 'figcaption')
        chars_by_film = {}
        # loop over each film and extract each character-words relation
        for pos in range(len(chars_in_film)):
                figures = chars_in_film[pos].find_all('figcaption')
                chars_words = {}
                for f in range(0, len(figures), 2):
                    # remove numeric index from names
                    name = re.sub(r'[0-9]+\.', '', figures[f].text).strip()
                    chars_words[name] = figures[f + 1].text.replace(',', '')
                chars_by_film[films[pos].strip()] = chars_words.copy()

        df = pd.DataFrame(chars_by_film)
        df = df.fillna(0)
        df = df.apply(pd.to_numeric)
        # remove 'Total' from films to make the sum for all characters
        films = films[:-1]
        df['Total'] = df[films].sum(axis=1)
        print(df)
        df.to_csv('character_words.csv', sep=';')
        