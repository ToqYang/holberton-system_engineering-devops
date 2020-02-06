#!/usr/bin/python3
"""
Subscribers about api
"""

import requests


def number_of_subscribers(subreddit):
    """
    Determine the number of subscribers

    Args:
        subreddit: Name of the forum of reddit

    Returns:
        (int) Number of subscribers of the forum
        0 if the subreddit is incorrect
    """
    base_url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)

    req = requests.get(base_url,
                       headers={'user-agent': 'Changuas'},
                       allow_redirects=False)

    if (req.status_code != 200):
        return (0)

    num = req.json().get('data').get('subscribers')
    return (num)
