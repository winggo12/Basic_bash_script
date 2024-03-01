import re
f1 = open("./names.txt", "r")
content = re.sub(r'[^\w]',' ',f1.read())


words = content.lower().split()
unique_words = list(set(words))

dict = {}
for w in unique_words:
    dict[w]=0 

for w in words:
     dict[w] += 1
     
print(dict)