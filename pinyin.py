from xpinyin import  Pinyin
with open("./data/train.txt",'r',encoding="utf-8") as f:
    data=f.readlines()

# 增加拼音
# 训练集
zt=[]
for i in data:
    if i[0] ==Pinyin().get_pinyin(i[0]):
        zt.append((i))
    else:
        zt.append(i),
        zt.append(Pinyin().get_pinyin(i[0])+i[1:])

ptrain="".join(zt)
with open("./data/ptrain.txt","w",encoding="utf-8") as f:
    f.write()

# 验证集
with open("./data/test.xtx", 'r', encoding="utf-8") as f:
    data1 = f.readlines()
ze=[]
for i in data1:
    if i[0] ==Pinyin().get_pinyin(i[0]):
        ze.append((i))
    else:
        ze.append(i),
        zt.append(Pinyin().get_pinyin(i[0])+i[1:])

ptrain="".join(ze)
with open("./data/ptest.txt","w",encoding="utf-8") as f:
    f.write()

# 预测
with open("./data/predict.txt", 'r', encoding="utf-8") as f:
    data2 = f.readlines()
zp=[]

for i in data2:
    if i[0] ==Pinyin().get_pinyin(i[0]):
        zp.append((i))
    else:
        zp.append(i),
        zp.append(Pinyin().get_pinyin(i[0])+i[1:])

ptrain="".join(ze)
with open("./data/ppredict.txt","w",encoding="utf-8") as f:
    f.write()