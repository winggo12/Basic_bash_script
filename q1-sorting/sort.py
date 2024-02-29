f = open('./services.txt', 'r')
lines = f.readlines()
# print("Before sorting: ", lines)
lines = sorted(lines)
# print("Before sorting: ", lines)
for line in lines:
    if "-v3" not in line and ".bar" in line:
        print(line)