2 + 2

(5 - 3) / 2 + 2

cos(0.5)

round(2.545, digits=2)
round(2.545, 2)

pi

log(2)

log(2, base=3)

exp(4)

# 5! = 5 * 4 * 3 * 2 * 1

# здесь я ищу факториал от 5
factorial(5)

log(5 + 2 - 10) * sin(0.2)


# Создание переменной
# Alt -
# option -
a <- round(log(2) + 200, 2)
b <- a + exp(2)

# snake case
my_first_res <- 4

# camel case
MyFirstRes <- 4

# Типы объектов или что мы можем закидывать в переменную

# integer - 4, 5, 10, -1, -100, 0
# float - 2.54, 2.41234
# string/character - "HSE", "R for analysis"
# bool - TRUE / FALSE

a_str <- "HSE"

a_na <- NaN 

class(a_str)
class(a)

class(a_na)

a_na + 100
a_inf <- Inf

# Оценки за курс по анализу данных 

# Массивы / вектора / списки

stud_scores <- c(5, 6, 10, 8, 3, 2, 5, 7, 9, 9, 4)

# Срезы / индексирование - получаем часть информации

# Массивы - хранилища, в которых мы можем сохранять несколько объектов 
# и каждый объект в массиве имеет свой номер (индекс)

stud_scores[3]

# Хочу получить оценку для 1, 3, 4, 5 студента:

stud_scores[c(1, 3, 4, 5)]

# Если хотите несколько объектов (для любой задачи), создавайте вектор!

c(1, 2, 3, 4, 5, 6, 7)

# еще один способ создания списков:

my_list <- 1:7
my_list

# и еще один способ создания списков - позволяет задать шаг:


seq(from=1, to=6, by=2)
seq(1, 6, 2)


stud_scores[1]


stud_scores[1:5]
stud_scores[c(1, 2, 4)]
stud_scores[seq(1, 6, 2)]

# Полезные функции для списков:

# сколько элементов в списке - его длина
length(stud_scores)

max(stud_scores)
min(stud_scores)

sum(stud_scores)

mean(stud_scores)
sum(stud_scores) / length(stud_scores)


stud_scores <- c(5, 6, 10, 8, 3, 2, 5, 7, 9, 9)
stud_scores_2 <- c(5, 6, 10, 8, 3, 2, 5, 7, 9, 9, 4)

# здесь мы нашли длину
n <- length(stud_scores_2)
# здесь мы нашли тот массив индексов, по которому мы будем делать срез
my_seq <- seq(1, n, 2)
# сделали сам срез
stud_scores_2[my_seq]

# ЛОГИЧЕСКИЕ СРЕЗЫ

# FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
#  5      6    10    8       3    2     5     7     9    9

stud_scores[stud_scores >= 6]
stud_scores[stud_scores >= 6 & stud_scores < 8]

names <- c("max", 'sasha', 'igor')

lst <- c(1, 4, 'max')

lst[1] + 100

class(lst[1])

lst <- c(1, 4)

lst[1] + 100

class(lst[1])

# Любой ваш код должен быть оптимальным! 
# То есть работать для любых адекватных входных данных

# Конструкция if
temp <- 100
  
if (temp > 80){ 
  print("Температура достигла предела!!!") 
} else { 
  print("Температура в норме") 
}


# Если температура приближается к 80 (70 и выше), то меня надо предупреждать
temp <- 50

if (temp > 80){
  print("Температура достигла предела!!!")
} elsre if (temp > 70 & temp <= 80){
  print("Температура близится к 80!")
} else {
  print('Все ок!')
}



























# Дано натуральное число. 
# Требуется определить, является ли год с данным номером високосным. 
# Если год является високосным, то выведите YES, иначе выведите NO. 
# Год является високосным, если его номер кратен  4 , но не кратен  100 , 
# а также если он кратен  400 .








