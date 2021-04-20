def filter_list(l):
    #'return a new list with the strings filtered out'
    out = []
    for i in l:
        if not isinstance(i, str):
            out.append(i)
    return out
