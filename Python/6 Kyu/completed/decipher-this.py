def decipher_this(string):
    denum = lambda x: int("".join([d for d in x if d.isdigit()]))
    gte_2 = lambda x: [chr(denum(x))] + list(x[-1]) + list(x[len(str(denum(x)))+1:-1]) + list(x[len(str(denum(x)))])
    lt_2  = lambda x: [chr(denum(x))] + list(x[len(str(denum(x))):])
    return " ".join([ "".join(gte_2(w)) if len(w)-len(str(denum(w)))>=2 else "".join(lt_2(w)) for w in string.split() ])
