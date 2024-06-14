num <- 600851475143

is_prime <- function(x) {
  ceiling = x %/% 2
  for (i in 2:ceiling) {
    if (x %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}


while (!is_prime(num)) {
  for (i in 3:num) {
    if (is_prime(i)) {
      if (num %% i == 0) {
        num <- num / i
        break
      }
    }
  }
}

print(num)