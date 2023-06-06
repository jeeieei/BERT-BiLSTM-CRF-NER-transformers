
import re
# 读取文件内容
with open("/home/user/tfprojects/BERT-BiLSTM-CRF-NER-pytorch/GuNER2023_train.txt", 'r', encoding='utf-8') as f:
    tr_data = f.read()
# 划分训练集与测试集
# tr_data=re.sub("\s+","",content)
# tr_data,te_data=train_test_split(data,test_size=0.1)
# tr_data='。'.join(tr_data).replace("\n","")
# te_data='。'.join(te_data).replace("\n","")

# 标签说明
# B-PER：人名开始的第一个字
# I-PER：人名开始中间的字
# E-PER：人名结尾的字
# B-BOOK：书名开始的第一个字
# I-BOOK：书名开始中间的字
# E-BOOK：书名结尾的字
# B-OFI：官职名开始的第一个字
# I-OFI：官职名开始中间的字
# E-OFI：官职名结尾的字
# O：非实体

# 异常
#  ﻿


# 训练集目标格式转换
# 提取实体和标签
train_data = []
train_label = []
count=0
j=0
bj=re.findall('\{(.*?)\}',tr_data)

print("fgdgd",bj)


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
        elif c in ["}",'P','E','R','B','O','K','F','I','|']:
            # 忽略实体标记
            continue
        else:
            train_data.append(c)
            train_label.append('O')
    else:
        break
# 按行保存，
print(train_label)
# print(train_data)
with open("./data/qtrain.txt", "w", encoding="utf-8") as f:
    for data, label in zip(train_data, train_label):
        if label == "O" and data == "\n":
            f.write(f"\t \n")
        # elif label=="O" and data =="﻿":
        #     continue
        else:
            f.write(f"{data}\t{label}\n")



