
# r + название распределения - генерируем выборку из конкретного распределения

baget <- 1

udav <- function(baget){
  cnt <- 0
  while (baget > 0){
    ukus <- runif(1, min=0, max=1)
    baget <- baget - ukus
    cnt <- cnt + 1
  }
  return(cnt)
}

udavs <- c()
for (i in 1:1000){
  udavs <- append(udavs, udav(1))
}

summa <- 0 
for (i in 1:1000){
  summa <- summa + udav(1)
}

summa / 1000 # среднее другим способом

mean(udavs) # среднее, посчитанное по выборке из 1000 удавов, оно сходится к мат. ожиданию

var(udavs) # дисперсия, которая тоже сходится к истинной 


# Задачка про спортсменов 


rooms <- c(rep('море', 12), rep('пустошь', 8))

# раздаю комнаты случ. образом среди всех спортсменов
sample(rooms)

sample(rooms)[1:8] # номера российских спортсменов

# проверяю для каждого номера, является ли он с видом на море
sample(rooms)[1:8] == 'море'

# считаю кол-во таких номеров
sum(sample(rooms)[1:8] == 'море')

rooms <- c(rep('море', 12), rep('пустошь', 8))

n_obs <- 10000


uspeh <- 0
for (i in 1:n_obs){
  more_rooms_cnt <- sum(sample(rooms)[1:8] == 'море')
  if (more_rooms_cnt == 8){
    uspeh <- uspeh + 1
  }
}

uspeh / n_obs

# Задача про лампочки

# T ~ Exp(lambda = 0.2)

# P(T > 10) = 1 - P(T <= 10) = 1 - F(10)

# F(x) = P(T <= x) 
# F(3) = P(T <= 3) # вероятность, что время работы лампочки окажется 3 ИЛИ МЕНЬШЕ

1 - pexp(10, rate = 0.2)

1 - (1 - exp(-0.2 * 10))

## Чему равен для первой лампочки 95% квантиль? Как проинтерпретировать это число?

qexp(0.95, rate = 10)

# Вывод: первая лампочка с вер-тью 0.95 перегорит за небольше, чем 14.97866 минут

## Таня будет сидеть на стуле 15 минут. 
# 5% - процент нашей ошибки. Уровнем значимости. Кол-во парашютистов, которыми мы можем пожертвовать - процент ошибок, которым мы можем пожертвовать 

# lambda - это интенсивность событий








