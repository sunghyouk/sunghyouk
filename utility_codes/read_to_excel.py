import csv
import os

import pandas as pd

PATH = r'/Users/sunghyouk/Library/CloudStorage/OneDrive-개인/CS_library/'

file_ls = []
max_depth = 0

for path, dir, files in os.walk(PATH):
    for file in files:
        current = os.path.join(path, file).replace('\\', '/')
        file_ls.append(current)

        if len(current.split('/')) > max_depth:
            max_depth = len(current.split('/'))

csv_path = '/Users/sunghyouk/Library/CloudStorage/OneDrive-개인/CS_library'
os.chdir(csv_path)
depth = list(range(0, max_depth, 1))

with open('book_list.csv', 'w', newline='', encoding='cp949') as f:
    w = csv.writer(f)
    w.writerow(' '.join(str(e) for e in depth).split())

    for path, dir, files in os.walk(PATH):
        for file in files:
            current = os.path.join(path, file).replace('\\', '/')
            if file.endswith('.pdf') or file.endswith('.epub'):
                row = os.path.relpath(current, PATH).split(os.sep)
                w.writerow(row)

df = pd.read_csv('book_list.csv', index_col=None, header=0, engine='python', encoding='cp949')
