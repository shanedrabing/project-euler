import bs4
import requests


# FUNCTIONS


def get(url):
    resp = requests.get(url)
    if resp.status_code != 200:
        return
    return resp.content


def parse(content):
    return bs4.BeautifulSoup(content, "lxml")


def wrap(text):
    words = text.replace("-", "- ").split()
    if len(words) < 2:
        return text

    lines = list()
    line, *words = words
    for x in words:
        trial = " ".join((line, x))
        if len(trial) < 64:
            line = trial
        else:
            lines.append(line.replace("- ", "-"))
            line = x
    if line:
        lines.append(line.replace("- ", "-"))

    return "\n".join(lines)


# SCRIPT


if __name__ == "__main__":
    import time

    for i in range(1, 100):
        url = "https://projecteuler.net/problem={}".format(i)
        
        # time.sleep(1)
        html = get(url)
        soup = parse(html)
        
        problem = soup.select_one(".problem_content")
        text = problem.text.strip()
        clean = "\n\n".join((url, *map(wrap, text.split("\n"))))

        with open("docs/pe_{:>04d}.txt".format(i), "w", encoding="utf8") as fh:
            print(clean, file=fh)
