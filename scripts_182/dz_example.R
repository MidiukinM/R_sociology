# Мидюкин Максим (182)

# Задание 1

my_factorial <- function(n){
  if (n == 0){
    return(1)
  } else if (n < 0) {
    return('Введите корректные данные!')
  } else {
    k <- 1
    for (i in 1:n){
      k <- k * i
    }
    return(k)
  }
}

my_factorial(5)

# Задание 2



