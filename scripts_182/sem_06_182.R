
## Задание №8
# Есть переменная action. Она может быть равна либо “Сложить”, либо “Перемножить”. 
# В зависимости от этой переменной нужно сложить или перемножить все элементы массива.

# Что идет на вход?
## action (Текстовая) и числовой массив

sum_or_multiply <- function(x, action = 'Сложить'){
  if (action == 'Сложить'){
    summa <- 0
    for (i in x){
      summa <- summa + i
    }
    return(summa)
  } else if (action == 'Перемножить'){
    proizv <- 1
    for (i in x){
      proizv <- proizv * i
    }
    return(proizv)
  } else {
    print('Action может принимать значения "Сложить" и "Перемножить"')
  }
}

sum_or_multiply(action='Сложить', x=c(1, 2, 3, 4))

sum_or_multiply('Сложить', c(1,2,3,4)) # здесь получили ошибку, так как не в том порядке

sum_or_multiply(c(1,2,3,4), 'Сложить') # здесь ошибку не получили, так как с порядком все норм

sum_or_multiply(x=c(1, 2, 3, 4)) # без указания action все работает, так как есть значение по умолч.

round(15.543) # в round тоже есть умолчание для аргумента digits, поэтому ошибку не получили

## Переделываем в норм вид, никакого текста!  - правило хорошего тона

sum_or_multiply <- function(x, sum = TRUE){
  if (sum){
    summa <- 0
    for (i in x){
      summa <- summa + i
    }
    return(summa)
  } else if (!sum){
    proizv <- 1
    for (i in x){
      proizv <- proizv * i
    }
    return(proizv)
  }
}

sum_or_multiply(c(1, 2, 3, 4), sum=FALSE)


# Задание 6 (с дня 3)

## Было
f1 <- function(x){
  return(x^1)
} 
f2 <- function(x){
  return(x^2)
} 
f3 <- function(x){
  return(x^3)
} 

## Стало
 
f <- function(x, degree=1){
  return(x^degree)
}

f(2, degree=1)


# У нас есть число x, нужно на выход отдать x^2, x^3

f <- function(x){
  return(c(x^2, x^3))
}

f(5)[1]

f(5)[2]

# Дополнительный материал: РЕКУРСИЯ


fibonacci(4) = fibonacci(3) + fibonacci(2) = (fibonacci(2) + fibonacci(1)) + (fibonacci(1) + fibonacci(0)) = 
  = ((fibonacci(1) + fibonacci(0)) + fibonacci(1)) + (fibonacci(1) + fibonacci(0))

fibonacci(4) = fibonacci(3) + fibonacci(2)

fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)

fibonacci(0) = 0
fibonacci(1) = 1

fibonacci(4) = ((0 + 1) + 1) + (1 + 0) = 3


fibonacci <- function(n){
  if (n == 0){
    return(0)
  } else if (n == 1){
    return(1)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}

fibonacci(4)

