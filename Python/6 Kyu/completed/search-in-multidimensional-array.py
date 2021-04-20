def locate(seq, value):
    #getType = lambda l: [ type(i) for i in l ]
    flattenedList = lambda l: [items for sublist in l for items in sublist]
    getTypes = lambda l: [i for i in l if type(i)==list]
    arr = seq
    try:
        while bool(getTypes(arr)):
            arr = flattenedList(arr)
    except:
        pass

    print("========Post========")
    print(arr)
    print("========PRE========")
    print(seq)
    print("========VAL========")
    print(value)

    return bool(value in arr)
