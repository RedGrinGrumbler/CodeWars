from string import ascii_lowercase as lwr, ascii_uppercase as upr, punctuation as punc, digits
def rot13(message):
    rotate =lambda x: lwr[(lwr.index(x)+13)%26] if x.islower() else upr[(upr.index(x)+13)%26]
    return "".join([rotate(i) if (i not in punc+digits+' ') else i for i in message])
