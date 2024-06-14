num = 600851475143

def isprime(x):
    for i in range (2, x//2):
        if x % i == 0:
            return False
    return True

while not isprime(num):
    for i in range(3,num):
        if isprime(i):
            if num % i == 0:
                num = num // i
                break


print(num)
