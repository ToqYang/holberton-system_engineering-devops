#!/usr/bin/python3
""" Gather data from an API """
import sys
import os
import requests
import csv
import json

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
    did_task = []

    for my_dict in req:
        ti = my_dict.get("title")
        title.append(ti)
        for key, value in my_dict.items():
            if key == "completed":
                if value is True:
                    done_task += 1
                did_task.append(value)
                total_task += 1

    user_id = reqnameid.get("id")
    name_File = str(user_id) + ".csv"

    my_Data = []

    for i in range(len(title)):
        my_Data = []
        my_Data.append(str(user_id))
        my_Data.append(name)
        my_Data.append(did_task[i])
        my_Data.append(title[i])

        with open(name_File, 'a') as f:
            tex = csv.writer(f, delimiter=',',
                             quoting=csv.QUOTE_ALL)
            tex.writerow(my_Data)
