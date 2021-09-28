
## Матрицы

matrix(data=1:10, nrow=2, ncol=5, byrow=TRUE)
matrix(data=c('А', 'B'), nrow=2, ncol=1)

x <- c(10, 220, 30, 41)

x[c(2, 3)]

x_mat <- matrix(data=1:9, nrow=3, ncol=3, byrow=TRUE)

# Срезы в матрице:
x_mat[2, 3]

x_mat[2, ]

x_mat[, 3]

det(x_mat)


## Циклы (for / while) - упрощают жизнь, когда нужно сделать одну и ту же операцию/функцию много раз

x <- 1:10
x

sum(x)

x[1] <- 55
x

x[2] <- 55
x

x[3] <- 55
x

x[4] <- 55
x

x[5] <- 55
x

1:length(x)

x <- 1:10
x

for (hse in 1:length(x)){
  print(hse)
  x[hse] <- 55
  print(x)
  print('-------------------')
}


x <- c('A', 'B', 'C', 'D', 'E')
x

for (hse in x){
  print(hse)
}

a <- c(1, 100, -1, 0, 20, 4)

# выведите мне через for по порядку все элементы этого массива 2мя способами:

## 1 способ:
for (index in 1:length(a)){
  print(a[index])
}

## 2 способ:
for (element in a){
  print(element)
}

# ----------------------------------------------

## 1 способ:
for (i in 1:length(a)){
  print(a[i])
}

## 2 способ:
for (i in a){
  print(i)
}

# ----------------------------------------------


# Дан массив. Найти сумму всех элементов этого массива.

x <- sample(1:100, size=10)
x

# 1 вариант:
sum(x)

# 2 вариант:

summa <- 0

for (i in 1:length(x)){
  # обязательно перезаписываем нашу переменную
  summa <- x[i] + summa
}

print(summa)


## 1 шаг: i = 1, x[i] = 35, a <- x[i] + a = x[1] + a = 35 + 0 = 35
## 2 шаг: i = 2, x[i] = 43, a <- x[i] + a = 43 + 35 = 78
## 3 шаг: i = 3, x[i] = 79, a <- x[i] + a = 79 + 78 = 

# ----------------------------------------------

# Дан массив. Найти произведение всех элементов этого массива.

x <- sample(1:100, size=10)
x

proizv <- 1

for (element in x){
  proizv <- element * proizv
}


for (i in 1:length(x)){
  proizv <- x[i] * proizv
}

# ----------------------------------------------


# Дан массив. Посчитать сумму всех четных элементов массива.

x <- sample(1:10, size=4)
print(x)

summa <- 0

for (i in x){
  summa <- 0
  
  if (i %% 2 == 0){
    print('')
  } else {
    summa <- i + summa
  }
}

print(summa)

# ----------------------------------------------

# Есть переменная action. Она может быть равна либо “Сложить”, либо “Перемножить”. 
# В зависимости от этой переменной нужно сложить или перемножить все элементы массива.
x <- sample(1:10, size=4)
print(x)

action <- 'Перемножить'

if (action == 'Сложить'){
  
  summa <- 0
  for (i in 1:length(x)){
    # обязательно перезаписываем нашу переменную
    summa <- x[i] + summa
  }
  print(summa)
  

} else if (action == 'Перемножить'){
  
  proizv <- 1
  for (element in x){
    proizv <- element * proizv
  }
  print(proizv)
  
} 


















