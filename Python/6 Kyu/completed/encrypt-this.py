def encrypt_this(text):
        arr=[]
        for i in text.split():
            if len(i)==1:
                arr.append(str(ord(i)))
            elif len(i)<=4:
                arr.append(str(ord(i[0]))+i[:0:-1])
            else:
                arr.append(str(ord(i[0]))+i[-1]+i[2:-1]+i[1])
        return " ".join(arr)
