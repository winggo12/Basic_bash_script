with open('./names.txt', 'r') as f:
    # print(f.read())
    lines = f.readlines()
    lines = [line.replace("\n", "") for line in lines]
    print(lines)
    unique_lines = list(set(lines))
    print(unique_lines)
    # print("/n".join(unique_lines))
