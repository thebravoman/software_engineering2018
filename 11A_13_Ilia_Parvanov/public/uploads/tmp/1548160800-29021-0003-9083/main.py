def isPrime(num):

    for i in range(1, num+1):
        if num % i == 0 and i != 1 and i != num:
            return False

    return True

largestPrimeFactor = 0
num = 600851475143
i = num
j = 2
while i > 1 and j < num:
    i = int(num/j)
    print(i)
    if num % i == 0 and isPrime(i):
        largestPrimeFactor = i
        break
    j += 1
print(largestPrimeFactor)
