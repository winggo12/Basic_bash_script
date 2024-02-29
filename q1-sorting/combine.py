import sys
print ('argument list', sys.argv)
path1 = sys.argv[1] 
path2 = sys.argv[2]
print(path1, ' ', path2)


f1 = open("./hosts.txt", "r")
f2 = open("./names.txt", "r")

lines1 = [line.strip() for line in f1.readlines()]
lines2 = [line.strip() for line in f2.readlines()]

max_len = max(len(lines1), len(lines2))

zipped_lines = zip(lines1, lines2)
print(zipped_lines)

combined_lines = [" ".join(z) for z in zipped_lines]

# for z in zipped_lines:
#     print(" ".join(z))
with open('services.txt', 'w') as combined_file:
    combined_file.write( "\n".join(combined_lines) )


