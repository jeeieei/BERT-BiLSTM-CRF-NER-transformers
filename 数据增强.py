
import re
import random
from sklearn.model_selection import train_test_split
# 读取文件内容
with open("./data/trainy.txt", 'r', encoding='utf-8') as f:
    t1_data = f.read()
with open("./data/testy.txt", 'r', encoding='utf-8') as f:
    e1_data = f.read()
t_data=t1_data.split("\n")
e_data=e1_data.split("\n")

# BOOK所在段数据增强
tr_data=[b for b in t_data if "BOOK" in b]
te_data=[bb for bb in e_data if "BOOK" in bb]
print(len(tr_data))
print(len(te_data))
print("训练集增强:  " ,tr_data)
print("验证集集增强:  " ,te_data)

tr_data='\n'.join(tr_data)
te_data='\n'.join(te_data)

# 标签说明
# B-PER：人名开始的第一个字
# I-PER：人名开始中间的字
# E-PER：人名结尾的字
# B-BOOK：书名开始的第一个字
# I-BOOK：书名开始中间的字train_data=[b for b in t_data if "BOOK" in b]
# E-BOOK：书名结尾的字
# B-OFI：官职名开始的第一个字
# I-OFI：官职名开始中间的字
# E-OFI：官职名结尾的字
#S-  表示单独一个
# O：非实体




# 训练集目标格式转换
# 提取实体和标签
train_data = []
train_label = []
count=0
j=0
bj=re.findall('\{(.*?)\}',tr_data)
print(bj)
# 随机选择60% ，长度相同的互相替换
shuffledata=random.sample(bj,int(len(bj)*1))
a=shuffledata.copy()

countt=0
# 打乱 随机地名人名
random.shuffle(shuffledata)
for  i in range(int(len(bj)*1)):
    index = bj.index(a[i])
    # if len(bj[index])==len(shuffledata[i]):
    countt=countt+1
    bj[index]=shuffledata[i]
    # else:
    #     continue
print("训练集及集增强：",countt)
for i in range(len(tr_data)):
    if (i+j)<len(tr_data):
        c=tr_data[i+j]
        if c == '{':
            # 提取实体
            entity = bj[count]
            j=len(entity )+j
            count=count+1
            train_data.extend(list(entity.split('|')[0]))

    #             dc=len(entity.split('|')[0])
            # 根据实体类型添加标签
            # 提取实体长度为1 S-表示
            if '|PER' in entity:
                if len(entity.split('|')[0])== 1:
                    train_label.extend(['S-PER'])
                else:
                    train_label.extend(['B-PER'] + ['I-PER'] * (len(entity.split('|')[0]) - 2) + ['E-PER'])
            elif '|BOOK' in entity:
                if len(entity.split('|')[0])== 1:
                    train_label.extend(['S-BOOK'])
                else:
                    train_label.extend(['B-BOOK'] + ['I-BOOK'] * (len(entity.split('|')[0]) - 2)  + ['E-BOOK'])
            elif '|OFI' in entity:
                if len(entity.split('|')[0])== 1:
                    train_label.extend(['S-OFI'])
                else:
                    train_label.extend(['B-OFI'] + ['I-OFI'] * (len(entity.split('|')[0]) - 2)  + ['E-OFI'])
    #     elif c == '}' or c == '|':
        elif c in ["}",'P','E','R','B','O','K','F','I','|'," "]:
            # 忽略实体标记
            continue
        else:
            train_data.append(c)
            train_label.append('O')
    else:
        break
# 按行保存，
with open("./data/ztrain.txt", "w", encoding="utf-8") as f:
    for data, label in zip(train_data, train_label):
        if label == "O" and data == "\n":
            f.write(f"\t \n")
        # elif label=="O" and data =="﻿":
        #     continue
        else:
            f.write(f"{data}\t{label}\n")

# 测试集目标格式转转
# 提取实体和标签
test_data = []
test_label = []
count=0
j=0
bj=re.findall('\{(.*?)\}',te_data)
print(bj)
shuffledata=random.sample(bj,int(len(bj)*1))
a=shuffledata.copy()
counte=0
# 打乱 随机地名人名数据增强.py:126
random.shuffle(shuffledata)
for  i in range(int(len(bj)*1)):
    index = bj.index(a[i])
    # if len(bj[index])==len(shuffledata[i]):
    counte=counte+1
    bj[index]=shuffledata[i]
    # else:
    #     continue
print("验证及集增强：",counte)
for i in range(len(te_data)):
    if (i+j)<len(te_data):
        c=te_data[i+j]
        if c == '{':
            # 提取实体
            entity = bj[count]
            j=len(entity )+j
            count=count+1
            test_data.extend(list(entity.split('|')[0]))

    #             dc=len(entity.split('|')[0])
            # 根据实体类型添加标签
            # 提取实体长度为1 S-表示
            if '|PER' in entity:
                if len(entity.split('|')[0])== 1:
                    test_label.extend(['S-PER'])
                else:
                    test_label.extend(['B-PER'] + ['I-PER'] * (len(entity.split('|')[0]) - 2) + ['E-PER'])
            elif '|BOOK' in entity:
                if len(entity.split('|')[0])== 1:
                    test_label.extend(['S-BOOK'])
                else:
                    test_label.extend(['B-BOOK'] + ['I-BOOK'] * (len(entity.split('|')[0]) - 2)  + ['E-BOOK'])
            elif '|OFI' in entity:
                if len(entity.split('|')[0])== 1:
                    test_label.extend(['S-OFI'])
                else:
                    test_label.extend(['B-OFI'] + ['I-OFI'] * (len(entity.split('|')[0]) - 2)  + ['E-OFI'])
    #     elif c == '}' or c == '|':
        elif c in ["}",'P','E','R','B','O','K','F','I','|',' ']:
            # 忽略实体标记
            continue
        else:
            test_data.append(c)
            test_label.append('O')
    else:
        break
# 按行保存，
print(test_data)

with open("./data/ztest.txt", "w", encoding="utf-8") as f:
    for data, label in zip(test_data, test_label):
        if label == "O" and data == "\n":
            f.write(f"\t \n")
        # elif label=="O" and data =="﻿":
        #     continue
        else:
            f.write(f"{data}\t{label}\n")

