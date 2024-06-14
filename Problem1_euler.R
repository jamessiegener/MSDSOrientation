sum <- 0

for (i in 3:999) {
  if (i %% 3 == 0) {
    sum <- sum + i
  } else if (i %% 5 == 0) {
    sum <- sum + i
  }
}
print(sum)
