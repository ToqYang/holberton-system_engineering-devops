#!/usr/bin/python3
"""
Prints the titles of the first 10 hot posts listed for a given subreddit.
"""

import requests


def top_ten(subreddit):
    """
    10 more host-post

    Args:
        subreddit: Name of the forum of reddit

    Returns:
        (int) Number of hot list
        0 if the subreddit is incorrect
    """
    base_url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)

    req = requests.get(base_url,
                       headers={'user-agent': 'Changuas'},
                       allow_redirects=False)

    if (req.status_code != 200):
        print("None")
        return None

    num = req.json().get('data').get('children')
    count = 0

    for elem in num:
        print(elem.get('data').get('title'))
        count += 1
        if (count == 10):
            break
