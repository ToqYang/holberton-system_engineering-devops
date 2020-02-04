#!/usr/bin/python3
""" Gather data from an API """
import sys
import requests

if __name__ == "__main__":
    wb = "https://jsonplaceholder.typicode.com/users" + "/" + sys.argv[1]
    reqnameid = requests.get(wb).json()

    if reqnameid.get("id") == int(sys.argv[1]):
        name = reqnameid.get("name")

    wb = "https://jsonplaceholder.typicode.com/todos?userId=" + sys.argv[1]
    req = requests.get(wb).json()

    done_task = 0
    total_task = 0
    title = []

    for my_dict in req:
        ti = my_dict.get("title")
        title.append(ti)
        for key, value in my_dict.items():
            if key == "completed":
                if value is True:
                    done_task += 1
                total_task += 1

    print("Employee {:s} is done with tasks({:d}/{:d})"
          .format(name, done_task, total_task))

    for line in title:
        print("\t {:s}".format(line))
