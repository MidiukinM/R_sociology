# Вопросы

## Способы создания массива?
c()
seq(1, 10)
1:10

## Как работает for?
x <- c(-1, 432, 33, 10, 100, 10000)

for (a in 1:length(x)){
  print(a)
  print(x[a])
}

## Что делает код ниже? 
x <- c(-1, 432, 33, 10)

a <- 0

for (i in x){
  if (i %% 2 == 0){
    a <- a + 10
  }
  a <- a - 1
}
print(a)

# ------------------------------------------------

# Решаем задачи с семинара

## Найти факториал числа N

# 5! = 1 * 2 * 3 * 4 * 5 = 120
# 3! = 1 * 2 * 3 = 6
# 0! = 1

factorial(5)

n <- 0

if (n == 0){
  print(1)
} else {
  fact <- 1 
  for (i in 1:n){
    fact <- fact * i
  }
  print(fact)
}


## Задача про треугольник
k <- 9

for (i in k:1){
  print(i:1)
}


## Задача на поиск пропущенной карточки
# Для настольной игры используются карточки с номерами от 1 до N. 
# Одна карточка потерялась. Найдите ее, зная номера оставшихся карточек.

N <- 100

cards <- 1:N
cards_without_lost <- sample(1:N, size=N-1)

# используем внутреннюю функцию
sum(cards) - sum(cards_without_lost)

# пишем свою функцию 
my_sum <- function(x){
  summa <- 0
  for (i in 1:length(x)){
    summa <- summa + x[i]
  }
  return(summa)
}

my_sum(cards) - my_sum(cards_without_lost)

# пишем без функций. Не очень удобно, так как приходится один и тот же код писать несколько раз
summa <- 0
for (i in 1:length(cards)){
  summa <- summa + cards[i]
}
print(summa)


summa2 <- 0
for (i in 1:length(cards_without_lost)){
  summa2 <- summa2 + cards_without_lost[i]
}
print(summa2)

summa - summa2 



## Задача на сумму факториалов
# По данному натуральном n вычислите сумму 1! + 2! + 3! + ... + n!. 

my_factorial <- function(n){
  if (n == 0){
    return(1)
  } else {
    fact <- 1 
    for (i in 1:n){
      fact <- fact * i
    }
    return(fact) # break
  }
}

N <- 5

# Хочу получить: 1! + 2! + 3! + 4! + 5!

summa <- 0
for (i in 1:N){
  summa <- my_factorial(i) + summa 
}
print(summa)















