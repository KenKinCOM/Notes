num = range(100)
for i in num:
    if i%7 == 0 or i//10 == 7 or i%10 == 7:
       continue
    else:
        print(i)


