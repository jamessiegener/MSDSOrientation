
num = 2
prev = 1
sum = 0

while num <= 4000000:
    if num % 2 == 0:
        sum += num
    num2 = num
    num += prev
    prev = num2

print(sum)