
import argparse

import time

start=time.perf_counter()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--yclabel", default=None, type=str)
    parser.add_argument("--tjsj",default=None, type=str)
    args = parser.parse_args()


    import  re
    with open(args.yclabel, "r", encoding="utf-8") as f:
        data = f.readlines()

    t = []
    # 还原原本换行符 \n 去除多余\n
    for ii in range(len(data)):

        i=data[ii]
        # print(i)
        if i[0] == '\n':

            t.extend(list("\n"))
        else:

            t.extend(list(i[0:1] + i[2:-1]))

    print(t)
    #删除前标签生中，最后多余的一个换行符 \n
    del t[-1]
    t = "".join(t)

    ca = t

    # 去除特殊标志
    for i in ["O", "B-", "I-", "S-", "E-", " "]:
        if i in ca:
            ca = ca.replace(i, "")
        else:
            continue
    print(ca)
    pr = []
    count = 0
    # print(ca)
    for i in range(len(ca)):
        i = i + count
        if i < len(ca):

            if ca[i] == "P":
                del pr[-1]
                if ca[i:i + 3] != ca[i + 4:i + 7]:

                    pr.extend(list("{") + list(ca[i - 1]) + list('|') + list("PER") + list("}"))
                    count = count + 2
                elif ca[i:i + 3] == ca[i + 4:i + 7] and ca[i:i + 3] != ca[i + 8:i + 11]:

                    pr.extend(list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list('|') + list("PER") + list("}"))
                    count = count + 6

                elif ca[i:i + 3] == ca[i + 8:i + 11] and ca[i:i + 3] != ca[i + 12:i + 15]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) + list('|') + list("PER") + list(
                            "}"))
                    count = count + 10


                elif ca[i:i + 3] == ca[i + 12:i + 15] and ca[i:i + 3] != ca[i + 16:i + 19]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) +list(ca[i + 11]) +list('|') + list("PER") + list(
                            "}"))
                    count = count + 14
                elif ca[i:i + 3] == ca[i + 16:i + 19] and ca[i:i + 3] != ca[i + 20:i + 23]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) +list(ca[i + 11]) +list(ca[i + 15])+list('|') + list("PER") + list(
                            "}"))
                    count = count + 18

                elif ca[i:i + 3] == ca[i + 20:i + 23] and ca[i:i + 3] != ca[i + 24:i + 27]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) +list(ca[i + 11]) +list(ca[i + 15])+list(ca[i+19])+list('|') + list("PER") + list(
                            "}"))
                    count = count + 22

                elif ca[i:i + 3] == ca[i + 24:i + 27] and ca[i:i + 3] != ca[i + 28:i + 31]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) +list(ca[i + 11]) +list(ca[i + 15])+list(ca[i+19])+list(ca[i+23])+list('|') + list("PER") + list(
                            "}"))
                    count = count + 26


                elif ca[i:i + 3] == ca[i + 28:i + 31] and ca[i:i + 3] != ca[i + 32:i + 35]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) +list(ca[i + 11]) +list(ca[i+15])+list(ca[i+19])+list(ca[i+23])+list(ca[i+27])+list('|') + list("PER") + list(
                            "}"))
                    count = count + 30

                elif ca[i:i + 3] == ca[i + 32:i + 35]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 3]) + list(ca[i + 7]) +list(ca[i + 11]) +list(ca[i + 15])+list(ca[i + 19])+list(ca[i+23])+list(ca[i+27])+list(ca[i+31])+list('|') + list("PER") + list(
                            "}"))
                    count = count + 34


            elif ca[i] == "B":
                del pr[-1]
                if ca[i:i + 2] != ca[i + 3:i + 5]:

                    pr.extend(list("{") + list(ca[i-1]) + list('|') + list("BOOK") + list("}"))
                    count = count + 1
                elif ca[i:i + 2] == ca[i + 3:i + 5] and ca[i:i + 2] != ca[i + 6:i + 8]:

                    pr.extend(list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list('|') + list("BOOK") + list("}"))
                    count = count + 4
                elif ca[i:i + 2] == ca[i + 6:i + 8] and ca[i:i + 2] != ca[i + 9:i + 11]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 7
                elif ca[i:i + 2] ==ca[i + 9:i + 11] and ca[i:i + 2] !=ca[i + 12:i + 14]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i+8])+list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 10
                elif ca[i:i + 2] ==ca[i + 12:i + 14] and ca[i:i + 2] !=ca[i + 15:i + 17]:

                    pr.extend(
                        list("{") + list(ca[i-1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i+8])+list(ca[i+11])+list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 13
                elif ca[i:i + 2] ==ca[i + 15:i + 17]and ca[i:i + 2] !=ca[i + 18:i + 20]:

                    pr.extend(
                        list("{") + list(ca[i-1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i+8])+list(ca[i+11])+list(ca[i+14])+list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 16

                elif ca[i:i + 2] == ca[i + 18:i + 20] and ca[i:i + 2] != ca[i + 21:i + 23]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) +list(ca[i+17])+ list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 19

                elif ca[i:i + 2] == ca[i + 21:i + 23] and ca[i:i + 2] != ca[i + 24:i + 26]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) +list(ca[i+17])+list(ca[i+20])+list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 22

                elif ca[i:i + 2] == ca[i + 24:i + 26] and ca[i:i + 2] != ca[i + 27:i + 29]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) +list(ca[i+17])+list(ca[i+20])+list(ca[i+23])+list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 25

                elif ca[i:i + 2] == ca[i + 27:i + 29]:
                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) + list(ca[i + 17]) + list(ca[i + 20]) + list(
                            ca[i + 23]) + list(ca[i+26])+list('|') + list("BOOK") + list(
                            "}"))
                    count = count + 28



            elif ca[i] == "F":
                del pr[-1]
                if ca[i:i + 2] != ca[i + 3:i + 5]:

                    pr.extend(list("{") + list(ca[i-1]) + list('|') + list("OFI") + list("}"))
                    count = count + 1
                elif ca[i:i + 2] == ca[i + 3:i + 5] and ca[i:i + 2] != ca[i + 6:i + 8]:

                    pr.extend(list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list('|') + list("OFI") + list("}"))
                    count = count + 4
                elif ca[i:i + 2] == ca[i + 6:i + 8] and ca[i:i + 2] != ca[i + 9:i + 11]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list('|') + list("OFI") + list(
                            "}"))
                    count = count + 7

                elif ca[i:i + 2] ==ca[i + 9:i + 11] and ca[i:i + 2] !=ca[i + 12:i + 14]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i+8])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 10

                elif ca[i:i + 2] ==ca[i + 12:i + 14] and ca[i:i + 2] !=ca[i + 15:i + 17]:

                    pr.extend(
                        list("{") + list(ca[i-1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i+8])+list(ca[i+11])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 13
                elif ca[i:i + 2] ==ca[i + 15:i + 17]and ca[i:i + 2] !=ca[i + 18:i + 20]:

                    pr.extend(
                        list("{") + list(ca[i-1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i+8])+list(ca[i+11])+list(ca[i+14])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 16

                elif ca[i:i + 2] == ca[i + 18:i + 20] and ca[i:i + 2] != ca[i + 21:i + 23]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) +list(ca[i+17])+ list('|') + list("OFI") + list(
                            "}"))
                    count = count + 19

                elif ca[i:i + 2] == ca[i + 21:i + 23] and ca[i:i + 2] != ca[i + 24:i + 26]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) +list(ca[i+17])+list(ca[i+20])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 22

                elif ca[i:i + 2] == ca[i + 24:i + 26] and ca[i:i + 2] != ca[i + 27:i + 29]:

                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) +list(ca[i+17])+list(ca[i+20])+list(ca[i+23])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 25

                elif ca[i:i + 2] == ca[i + 27:i + 29]and ca[i:i + 2] != ca[i + 30:i + 32]:
                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) + list(ca[i + 17]) + list(ca[i + 20]) + list(
                            ca[i + 23]) + list(ca[i+26])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 28

                elif ca[i:i + 2] == ca[i + 30:i + 32]and ca[i:i + 2] != ca[i + 33:i + 35]:
                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) + list(ca[i + 17]) + list(ca[i + 20]) + list(
                            ca[i + 23]) + list(ca[i+26])+list(ca[i+29])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 31

                elif ca[i:i + 2] == ca[i + 33:i + 35]and ca[i:i + 2] != ca[i + 36:i + 38]:
                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) + list(ca[i + 17]) + list(ca[i + 20]) + list(
                            ca[i + 23]) + list(ca[i+26])+list(ca[i+29])+list(ca[i+32])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 34
                elif ca[i:i + 2] == ca[i + 36:i + 38]and ca[i:i + 2] != ca[i + 39:i + 41]:
                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) + list(ca[i + 17]) + list(ca[i + 20]) + list(
                            ca[i + 23]) + list(ca[i+26])+list(ca[i+29])+list(ca[i+32])+list(ca[i+35])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 37
                elif ca[i:i + 2] == ca[i + 39:i + 41]:
                    pr.extend(
                        list("{") + list(ca[i - 1]) + list(ca[i + 2]) + list(ca[i + 5]) + list(ca[i + 8]) + list(
                            ca[i + 11]) + list(ca[i + 14]) + list(ca[i + 17]) + list(ca[i + 20]) + list(
                            ca[i + 23]) + list(ca[i+26])+list(ca[i+29])+list(ca[i+32])+list(ca[i+35])+list(ca[i+38])+list('|') + list("OFI") + list(
                            "}"))
                    count = count + 40








            elif ca[i] in ["E", "R", "I", "K"]:
                continue
            else:
                pr.append(ca[i])


        else:

            break
    cd = "".join(pr)
    print(len(cd.split("\n")))

    with open(args.tjsj, "w", encoding="utf-8") as f:
        f.write(cd)

if __name__ == "__main__":
    main()
    pass


end=time.perf_counter()
print("运行时间：", end - start)