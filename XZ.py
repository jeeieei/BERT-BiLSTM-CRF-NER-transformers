with open("./data/xz.txt", "r", encoding="utf-8") as f:
    data = f.readlines()
count=0
xz=[]
for i in range(len(data)):
    i=i+count
    if i<len(data):
        print(data[i])
        if "PER" in data[i]:
            xz.append(data[i])
        elif "OFI" in data[i]:
            xz.append(data[i])

        elif "\n"==data[i]:
            xz.append("\t \n")

        elif "BOOK" in data[i]:
            xz.append(data[i])

        else:
            xz.append(data[i][0]+"\tO\n")

with open("./data/extra2.txt", "w", encoding="utf-8") as f:
    for kl in xz:

        f.write(kl)

