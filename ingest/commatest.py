with open('./author.csv') as file:
    t = 0
    for f in file:
        comma = 0
        t += 1
        for c in f:
            if c == ',':
                comma += 1
        if comma != 2:
            print (f)
            break
    print(t)
    exit()
