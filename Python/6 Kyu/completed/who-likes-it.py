# My Solution:

def likes(names):
    str = ""
    i = len(names)
    if i == 0:
        return "no one likes this"
    else:
        if i == 1:
            str = names[0] + " likes this"
            return str
        if i == 2:
            str += "{} and {} like this".format(names[0], names[1])
            return str
            names.clear()
        if i == 3:
            while len(names) > 2:
                str += names[0] +  ", "
                names.remove(names[0])
            str += "{} and {} like this".format(names[0], names[1])
            return str
        if i > 3:
            x = 2
            leng = len(names) - x
            while x > 1:
                str += names[0] +  ", "
                print(str)
                names.remove(names[0])
                x -= 1
            person2 = names[0]
            names.remove(names[0])
            str += "{} and {} others like this".format(person2, leng)
            print(str)
            return str
            
#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#
# Description:
#
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
#
# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
#
# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
#
# For 4 or more names, the number in "and 2 others" simply increases.
#
#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#Best Practice - Group Opinion

def likes(names):
    n = len(names)
    return {
        0: 'no one likes this',
        1: '{} likes this', 
        2: '{} and {} like this', 
        3: '{}, {} and {} like this', 
        4: '{}, {} and {others} others like this'
    }[min(4, n)].format(*names[:3], others=n-2)
    
    
    
    
    
    #
