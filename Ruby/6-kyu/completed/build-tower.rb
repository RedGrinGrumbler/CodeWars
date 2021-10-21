def towerBuilder(fl)
    tree ||= []
    max = fl
    while fl >=1
        stars = (2*fl)-1
        space = ((2*max-stars)/2)
        layer = (([" "]*space).join << (["*"]*stars).join << ([" "]*space).join)
        tree << layer
        fl-=1
    end
    return tree.reverse()
end


def towerBuilder(n)
    (1..n).map do |i|
        space = ' ' * (n - i)
        stars = '*' * (i * 2 - 1)
        space + stars + space
    end
end


def towerBuilder(n)
    n.times.map{|x|(?**(x*2+1)).center n*2-1}
end