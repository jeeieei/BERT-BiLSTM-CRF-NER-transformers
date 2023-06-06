import re
with open("./GuNER2023_test_public.txt","r", encoding="utf-8") as f:
    pre=f.read()

a="O"
# pre=re.sub("\s+","",pre)
with open("./data/predict.txt", "w", encoding="utf-8") as f:
    for data in pre:
        if data == "\n":
            f.write(f"\t \n")
        # elif data =="﻿":
        #     continue
        else:
            f.write(f"{data}\t{a}\n")

