import os

import pandas as pd

file_list = os.listdir('/Users/sunghyouk/Library/CloudStorage/OneDrive-개인/CS_library')
file_save = []

for file in file_list:
    file_sa = []
    file_sa.append(file)
    print(file)

    file_save.append(file_sa)

dataframe = pd.DataFrame(file_save)
dataframe.to_csv("/Users/sunghyouk/Library/CloudStorage/OneDrive-개인/CS_library/CS_pdf_book_list.csv",
                 header=False, index=False)
