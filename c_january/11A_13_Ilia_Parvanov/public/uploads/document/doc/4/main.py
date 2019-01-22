prev = 1
i = 2
total = 0
while i < 4000000:
    if i % 2 == 0:
        total += i
    temp = i
    i += prev
    prev = temp
print(total)
