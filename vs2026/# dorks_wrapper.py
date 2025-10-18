# dorks_wrapper.py
from typing import List
from googlesearch import search  # provided by googlesearch-python package

def search_dorks(query: str, max_results: int = 10, pause: float = 2.0) -> List[str]:
    """
    Perform a Google dork search and return list of result URLs (strings).

    Inputs:
    - query: the dork/google query string
    - max_results: maximum number of result URLs to return
    - pause: seconds to pause between requests (helps avoid captchas)

    Output:
    - list of result URL strings

    Error modes:
    - Module import errors if 'googlesearch' isn't installed
    - Captchas / rate limits from Google if requests are too frequent
    """
    results = []
    try:
        for i, url in enumerate(search(query, tld="com", lang="en", num=10, start=0, stop=None, pause=pause)):
            results.append(url)
            if len(results) >= max_results:
                break
    except Exception:
        # propagate or handle connection/import errors as appropriate
        raise
    return results

from dorks_wrapper import search_dorks

results = search_dorks('inurl:"/admin" filetype:php', max_results=10)
for url in results:
    print(url)