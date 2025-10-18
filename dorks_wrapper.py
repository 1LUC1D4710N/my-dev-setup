from typing import List
try:
    from googlesearch import search  # Provided by googlesearch-python package
except ImportError:
    raise ImportError("googlesearch module not found. Install with: pip install googlesearch-python")

def search_dorks(query: str, max_results: int = 10, pause: float = 2.0) -> List[str]:
    """
    Perform a Google dork search and return list of result URLs (strings).

    Inputs:
    - query: the dork/google query string
    - max_results: maximum number of result URLs to return
    - pause: seconds to pause between requests (helps avoid captchas)

    Output:
    - list of result URL strings
    """
    results = []
    for url in search(query, tld="com", lang="en", num=10, start=0, stop=None, pause=pause):
        results.append(url)
        if len(results) >= max_results:
            break
    return results

if __name__ == "__main__":
    # Example usage: interactive test
    q = input("Enter your Google dork query: ")
    n = input("Max results (default 10): ")
    try:
        n = int(n)
    except Exception:
        n = 10
    urls = search_dorks(q, max_results=n)
    print("\nResults:")
    for u in urls:
        print(u)
