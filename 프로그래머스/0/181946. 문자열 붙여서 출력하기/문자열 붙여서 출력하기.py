str1, str2 = input().strip().split(' ')

while True :
    if 1 <= len(str1) <= 10 and 1 <= len(str2) <= 10:
        print(str1 + str2)
        break
    else:
        continue;