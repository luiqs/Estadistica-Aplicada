### La transformacion de datos - dplyr ###
#install.packages("tidyverse")
library(tidyverse)
#El paquete dplyr
#install.packages("dplyr")
library(dplyr)
#install.packages("nycflights13")
library(nycflights13)

Agro <- readr::read_csv("C:/18. DATASETS/Agriculture lands/API_EG.USE.PCAP.KG.OE_DS2_en_csv_v2_423775.csv")

nycflights13::flights #Bureau of Transformation web page
head(flights)
?flights
# a tibble is a data frame mejoradopara trabajar mejor con el resto de herramientas de tidyverse
## las variables del tiber pueden ser de diferentes tipos:
### * int -> numeros enteros
### * dbl -> numeros reales (double)
### * chr -> vector de caracteres o strings
### * dttm -> date + time
### * lgl -> logical, contiene valores booleanos (T o F)
### * fctr -> factor, cariables categoricas
### * date -> fecha (dia, mes, año)

##Funciones de dplyr:
### *filter()  -> filtrar observaciones a partir de valores concretos
### *arrange() -> reordenar las filas
### *select()  -> seleccionar variables por sus nombres
### *mutate()  -> crea nuevas variables con funciones a partir de las existentes
### *summarise() -> colapsar varios valores para dar un resumen de los mismos
### *group_by()  -> opera la funcion a la que acompaña grupo a grupo

# Estructura de trabajo para tablas tibble con dplyr:
### 1 - data frame
### 2 - operaciones que queremos hacer  a las variables del data frame
### 3 - resultado en un nuevo data frame

######## 1. OPERACIÓN DE FILTER ########
#Encontrando todos los vuelos que salieron el 1 enero de nueva york
jan1_departure <- filter(flights, month == 1, day == 1)
set25_departure <- filter(flights, month == 9, day == 25)
dec25_departure <- filter(flights, month == 12, day == 24)
(dec25_departure <- filter(flights, month == 12, day == 24)) #reproducira tambien en la consolo, no solo almacenara la variable

#tipos de filtrados: >. >=, <, <=, ==, != 

filter(flights, month = 5) #no funciona por que solo hay un solo "=", siempre usar "=="
#Hay que tener cuidado al momento de usar == para valores redondeados numericos
#La funcion near() no sirve para saber si un valor esta cerca del otro:
near(sqrt(2)^2, 2)

#El algebra bolena:
## y & !x
## x & y
## x & !y
## x | y
## xor(x,y) es la union exclusiva, lo que no es de x ni de y
#Ejemplos con nuestra data:
filter(flights, month == 5 | month == 6)
filter(flights, month == 5|6) #este codigo no funciona, no es reconocido por R
may_june <- filter(flights, month %in% c(5,6)) #la sintaxis %in% funciona para llamar dos variables al mismo tiempo, reemplazando al comando " | "
#Leyes de Morgan:
## !(x & y) == (!x)|(!y)
## !(x | y) == (!x)&(!y)
###Por ejemplo:
filter(flights, !(arr_delay > 60 | dep_delay > 60)) #cambiandolo a la ley de Morgan: 
filter(flights, arr_delay <= 60, dep_delay <= 60) # En este caso la coma funciona con & operado

# El sindrome contagioso de los NA
##NA: not available
##Cualquier calculo que involucre una data con un solo dato NA, va a resultar en NA. Son como el virus ostia!
##Si quieres saber si un data.frame o vector o matriz tiene NA:
age.mery <- NA
is.na(age.mery)#la funcion is.na nos ayudara a localizar o sabe si hay NA en nuestra data
#Mas ejemplos
df <- tibble(x = c(1,2,NA,4,5))
filter(df, x > 2) #nos dara como resultado, los valores de 4 y 5
filter(df, is.na(x)|x > 2)

########## 2. OPERACIÓN ARRANGE #############
head(flights)
head(flights, 10) #si queremos las 10 primeras filas, por default son 6 siempre
tail(flights)
tail(flights, 10) #no da como resultado el mes de Setiembre. 
#Se debe a que el integer 9 es detectado como el ultimo mes
# Por tal razon es mejor utilizar la funcion arrange()
arrange(flights, year)
arrange(flights, year, month, day)
sorted_date <- arrange(flights, year, month, day)  
tail(sorted_date)# ahora si nos da como ultimo mes, el de Diciembre
#Por default, arrange arreglara las variables que le hemos dado de menor a mayor.
#Si queremos ordenar de mayor a menor, podemos utilizar "desc()":
head(arrange(flights, desc(arr_delay))) #nos dara el vuelo que mas se demoro es llegar
arrange(flights, desc(dep_delay)) # nos dara el vuelo que mas se demoro e salir
#que ocurre con los NA cuando utilizamos arrange(), por ejemplo:
df
arrange(df, x)
arrange(df, desc(x))
#Se puede observar que se uno o el otro caso, los NA siempre terminaran en el final 
#Lo cual es raro, por que el la segunda linea de los siguientes ejemplo, el NA se puede ver arriba
View(arrange(flights, carrier))
View(arrange(flights, distance)) #el NA aparece arriba, posiblemente solo por que estamos buscando "distance" que no es NA para la primera observacion
View(arrange(flights, desc(distance)))

###TAREA###
#Investigar la funcion beween() de dplyr

########## 3. OPERACIÓN SELECT #############
#Esta función nos permite seleccionar un conjunto de variables de interes (numero de columnas). Generalmente mas util para data sets con gran cantidad de columnas
##Ejemplo, si nos queremos quedar solo con el dep_delay y arr_delay
select(flights, dep_delay, arr_delay)
select(flights, year, month, day)
# Podemos utilizar la funcion "sorted_date[]" para especificar el rango de filas que queremos. Esta funcion no es especifico de la funcion select(), se puede usar independientemente.
select(sorted_date[1024, 1068], dep_delay, arr_delay)
select(sorted_date[1, ], dep_delay, arr_delay)
select(sorted_date[2500, ], dep_delay, arr_delay)
#Tambien se puede utilizar select() estableciendo rangos:
select(flights, dep_time : arr_delay) # el rango establecido respetara el orden de las columnas de la data inicial. Los " : " es la sintaxis usada para delimitar el rango querido
#Adicionalmente tambien podemos seleccionar todas las columnas, menos algunas columnas especificas que no saldran:
select(flights, -(year:day)) #el simbolo negativo indica la extraccion del rango de columnas.
#Hay tambien un gran conjunto de "helpers" que se pueden usar en combinacion con select(), algunos ejemplos son:
select(flights, starts_with("dep")) #la funcion "starts_with" buscara todas las columnas del data que empiecen por "dep"
select(flights, ends_with("delay")) #la funcion "ends_with" buscara todas las columnas que terminan en "delay"
select(flights, contains("s")) #la funcion "contains" buscara todas las columnas que tienen una "s" en su nombre. La "s" solo tiene que estar en la palabra, al comienzo, al medio o final indiferentemente
select(flights, matches("(.)\\1")) # matches busca expresiones "regulares" (estudiadas mas adelante). "(.)\\1" busca caracteres repetidos. e.g. "rr"
select(flights, num_range("x", 1:5)) #Busca variables que comienzan con x, continuado por los numeros del 1 al 5. Como por ejemplo "x1". No funciona en la data de flights por que no hay ese tipo de nombres
?select #para tener mas info

#Variante de select()
##select() tiene una variante utilizada para renombrar las variantes. Si utilizamos select() para renombrar, el problema es que todas las variables que no renombramos
##seran eliminadas. Sin embargo utilizar la variable rename()evita este problema (si queremos mantener las otras variables). Ejempos:
rename(flights, deptime = dep_time) #dep_time tomara el nuevo nombre de "deptime" y las demas variables quedaran igual
rename(flights, año = year, mes = month, dia = day) # Se puede utilizar con multiples variables
##de la misma manera se puede usar select(), pero como se ha indicado, borrara las otras columnas en el resultado
select(flights, deptime = dep_time)

#Si queremos mover algunas columnas a las posiciones iniciales, pero manterner las demas, podemos usar:
select(flights, time_hour, distance, air_time, everything())
#la funcion everything() mantendra todas las demas columnas que no han sido inicialmente nombradas, en el order de la data original

#TAREA: Por ultimo, tambien podemos usar la funciones helper "group_cols()" y "one_of". Averiguar como funcion

########## 4. OPERACIÓN MUTATE #############
#Util para hacer construcciones basadas en las variables que ya tenemos. Crear una nueva columna que sea una funcion de las ya existentes
#Mutate() siempre se encargara de añadir nuevas columnas al final de la dataset. Por lo cual es recomendable mantener el data set original intacto!!
#A partir de la data original, la modificamos y guardamos en una nueva data. Ejemplo:
flights_new <- select(flights, year:day, ends_with("delay"), distance, air_time)
#en esta nueva data, tenemos la distancia y el tiempo de vuelo. Usando distancia/tiempo, encontraremos la velocidad, esa es justo la nueva columna que generaremos con mutate()
mutate(flights_new,
       time_gain = arr_delay - dep_delay, # diferencia de tiempo (minutos)
       flight_speed = distance/(air_time/60)) #v = d/t (Km/h)
#En el resultado, podemos ver las velocidades finales de los aviones, 
#como tambien el tiempo ganado(+, cuando se demoro y - cuando gano tiempo i.e. se adelanto)
#Una variante del ejemplo anterios, seria:
mutate(flights_new,
       time_gain = arr_delay - dep_delay, # diferencia de tiempo (minutos)
       air_time_hour = air_time/60,
       flight_speed = distance/air_time_hour, #v = d/t (Km/h)
       time_gain_per_hour = time_gain/air_time_hour
)
#Si quieres almacenar esta nueva informacion, puedes o tener una nueva data (no recomendable, por que nos llenariamos de variables eternamente)
#Tambien podemos darle estos nuevas columnas a las misma data, e.g.:
flights_new <-  mutate(flights_new,
                       time_gain = arr_delay - dep_delay, # diferencia de tiempo (minutos)
                       air_time_hour = air_time/60,
                       flight_speed = distance/air_time_hour, #v = d/t (Km/h)
                       time_gain_per_hour = time_gain/air_time_hour
) #o tambien podemos poner al final -> flights_new

#Si queremos solo las nuevas columnas, y desasernos de las antiguas, entonces utilizaremos transmutate()
transmute(flights_new,
          time_gain = arr_delay - dep_delay, # diferencia de tiempo (minutos)
          air_time_hour = air_time/60,
          flight_speed = distance/air_time_hour, #v = d/t (Km/h)
          time_gain_per_hour = time_gain/air_time_hour)
#Al igual que el anterior caso, se deberian de almacenar en una nueva data o en la misma!

####Funciones utiles para mutar los datos:
#Tanto el mutate() como el transmutate() tienen un conjunto de funciones utiles para poder crear nuevas variables
#Requisito: la funcion que añades debe de ser vectorizada, i.e. los valores de entrada, deben de poder tomar un vector como parametro y deben poder volver un vector como salida.
##Listado de funciones:
#** Operaciones aritmeticas: +, -, *, /, ^ . Al juntar dos variables, usara la regla del "reciclaje". Si uno de los parametros que combinas es mas corta que la otra, automaticamente la que es mas corta se extendera para ser de la misma longitud que el otro parametro
#** Agregados de funciones: x/sum(x) : Proporcion sobre el total
# x-mean(x): Distancia respecto de media 
#(x-mean(x))/sd(x) : tipificacion
#(X-min(x))/(max(x)-min(x)): estandarizar entre [0,1]
#** Aritmetica modular: %/% :Cociente de la division entera
# %%  :Resto de la division entera
# x == y * (x%/%y) + (x%%y) . Algoritmo de Euclides
#Ejemplos:
transmute(flights,
          air_time,
          hour_air = air_time %/% 60, #nos dara solo el numero de horas exacto (sin decimales, integers)
          minutes_air = air_time %% 60) #nos dara el resto de la division entera, en este caso seran los minutos restante (los datos originales estan en minutos totales)

#** Logaritmos: log(): logaritmo en base "e", log2(), log10()
#Los logaritmos son muy apropiados y utiles para datos con rango de magnitud super elevados. 
#Quiza el mas facil de interpretar es el log2()

#** Offsets: lead(), lag(), estos siempre van en pareja. Nos permite calcular diferencia de trasnposicion o valores en concreto haciendo un barrido a la derecha o izquierda.
#Ejemplo:
df <-  1:12
lag(df) #mueve los valores hacia la derecha (desaparece el ultimo y en este caso, el primero es NA)
lead(df) #mueve o barre los valores hacia la izquierda
#Estas dos funciones se utilizan mucho con la funcion group_by()que veremos mas adelante

#** Funciones acumulativas: cumsum(), cumprod(), cummin(), cummax(). Para hacer operaciones acumuladas.
# Adicionalmente el paquete "dplyr" adiciona cummean(). Ejemplos:
cumsum(df) # va sumando el valor de la primera observacion sucesivamente
cumprod(df) #multiplica el valor inicial por el segundo y sucesivamente
cummin(df) #acumula el valor mas pequeño a manera que va avanzando sucesivamente
cummax(df) #acumula el valor maximo conforme va avanzando sucesivamente
cummean(df) #acumula el promedio conforme va avanzando sucesivamente

#** Comparaciones logicas: >, >=, <, <=, ==, !=. Ejemplos:
transmute(flights,
          dep_delay,
          has_been_delayed = dep_delay > 0)

#** Rankings: min_rank(), row_number(), dense_rank()
df <- c(7,1,2,5,3,3,8, NA, 3,4,-2)
min_rank(df) #no reordena los numeros, sino mas bien nos dice que posicion tiene cada uno de los valores, en este caso, en el vector
#si queremos hacer lo inverso, añadimos la funcion desc():
min_rank(desc(df)) #la posicion uno la tomara el maximo valor del vector en estudio. Cabe resaltar que min_rank() considera los empates con un mismo puesto o ranking
row_number(df) # no considera empates
dense_rank(df) # Considera empates. Pero a diferencia de min_rank, el siguiente numero del ranking despues de x empates, el el siguiente puesto. Esto no mas en min_rank, donde los empates se comen los puestos, y el siguiente numero recibe el puesto subsiguiente dependiente del numero de empates.
percent_rank(df) # Es el porcentaje relativo respecto al mayor numero. Quiza para entenderlo mejor:
percent_sample <-  1:10
min_rank(percent_sample)
percent_rank(percent_sample) # a number between 0 and 1 computed by rescaling min_rank to [0, 1]. Instructor no explica bien, no llego a entenderlo del todo
cume_dist(percent_sample) # Esta funcion si nos da el porcentaje de las posiciones de cada numero (10/10, 9/10, etc.)
ntile(df, n = 4) # nos da los valores de posiciones agrupados por cuantiles, el valor de n determinara el numero de cuantiles que queramos.
#Ejemplos con data flights:
transmute(flights,
          dep_delay,
          ntitle(dep_delay, n = 100)) #Aqui el dep_delay se agrupara el 100 grupos

########## 5. OPERACIÓN SUMMARISE #############
#Bueno, resume. Ejemplo:
summarise(flights, delay = mean(dep_delay, na.rm = T)) #nos da el promedio final de retraso de todos los aviones en la data
#Util cuando queremos hacer agrupaciones, y luego sacar los datos que queramos de esos grupos. Ejemplo:
by_month_group <-  group_by(flights, year, month) #primero agrupamos las observaciones respecto al año y mes
summarise(by_month_group, delay = mean(dep_delay, na.rm = T)) #luego buscamos las medias para cada uno de esos grupos
#Otro ejemplo
by_day_group <-  group_by(flights, year, month, day)
summarise(by_day_group, delay = mean(dep_delay, na.rm = T))
#Otro ejemplo 
by_day_group <-  group_by(flights, year, month, day)
summarise(by_day_group, 
          delay = mean(dep_delay, na.rm = T),
          median = median(dep_delay, na.rm = T),
          min = min(dep_delay, na.rm = T))
#Otro ejemplo
summarise(group_by(flights, carrier),
          delay = mean(dep_delay, na.rm = T))
#Si queremos saber el orden de las empresas con mayor retraso, utilizamos inicialmente mutate(si queremos mantener los datos iniciales)
mutate(summarise(group_by(flights, carrier),
                 delay = mean(dep_delay, na.rm = T)), #podemos cambiar la mean por median. Sabremos que la mitad de los vuelos no se retrasa (aprox.)
       sorted = min_rank(delay)
)

########## 6. PIPES "%>%" #############
#Las tuberias, es un lenguaje estandar de tidyverse package. Ejemplos:
group_by_dest <-  group_by(flights, dest)
delay <- summarise(group_by_dest,
                   count = n(), #va a contar el numero de vuelos por cada destino ya agrupado en group_by_dest
                   dist = mean(distance, na.rm = T), #calcula la mean de la distancia para cada destino agrupado
                   delay = mean(arr_delay, na.rm = T) #calcula la mean de arrival dela para cada destino agrupado
)
#Si queremos por ejemplo quedarnos con los destinos que tienen mas de 100 vuelos y adicionalmente queremos quitar un destino, e.g. HNL (honolulu) añadimos:
delay <- filter(delay, count > 100, dest != "HNL") #Sobreescribimos la variable delay para no llenarnos de variables. HNL es eliminado por que sino haria el grafico muy largo, es una isla muy lejana frente a los otros destinos
#Si queremos graficarlo con ggplot2:
ggplot(data = delay, mapping = aes(x=dist, y= delay))+
  geom_point(aes(size = count, color = count), alpha = 0.8)+
  geom_smooth(se=F)#+
#geom_text(aes(label = dest))
#Todo este ejemplo esta bonito y todo, pero hemos tenido que crear 4 pasos o hasta 5 para llegaar al resultado final
#Pipes precisamente nos ayuda a simplificar esto en una sola operacion
#Utilizando la sintaxis de pipes:
delays <- flights %>% 
  group_by(dest) %>%
  summarise(
    count = n(),
    dist = mean(distance, na.rm = T),
    delay = mean(arr_delay, na.rm = T)
  ) %>%
  filter(count > 100, dest != "HNL")
# x %>% f(y) <-> f(x,y)
# x %>% f(y) %>% g(z) <-> f((x,y),z)
# x %>% f(y) %>% g(z) %>% h(t) <-> f(((x,y),z),t) 
# Etc.
##IMPORTANCE!! El unico paquete que no acepta dentro de tidyverse no acepta pipes, es el ggplot2!!!
## ggvis si usa la sintaxis de pipes. Pero, no ha sido seleccionado en el paquete tidyverse y la sintaxis de ggvis es complicada aun

##### 7. EL PROBLEMA DE LOS NA ####
#Si nuestros datos que calculamos, tienen al menos un NA, entonces todos los valores resultantes seran NA. Ejemplo:
flights %>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay),
            median = median(dep_delay), 
            sd = sd(dep_delay),
            count = n() # en el caso de count no ocurre por que no lleva ningun valor
  )
#por eso se tiene que agregar na.rm = T, que significara que removeremos las observaciones con NA
flights %>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay, na.rm = T),
            median = median(dep_delay, na.rm = T), 
            sd = sd(dep_delay, na.rm = T),
            count = n()
  )
#Habra veces donde los NA llevan un dato inherente al tipo de datos que estes analizando, por ejemplo:
#Un NA dentro de la data de flights, significa un vuelo cancelado. Entonces podriamos pensar por eliminar o quedarnos con los vuelos cancelados:
not_cancelled <-  flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))
#Podemos usar esta data denuevo en nuestro pipe anterios
not_cancelled %>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay, na.rm = T),
            median = median(dep_delay, na.rm = T), 
            sd = sd(dep_delay, na.rm = T),
            count = n()
  )
# claro tambien se puede usar pipe para unir estos dos
flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))%>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay, na.rm = T),
            median = median(dep_delay, na.rm = T), 
            sd = sd(dep_delay, na.rm = T),
            count = n()
  )

##### 8.CONTAR Y VISUALIZAR RESUMENES CORRECTAMENTE #####
#Siempre que usamos la funcion summarize() es recomendable hacer un conteo con n() (no son NA) 
#Por ejemplo, podriamos decidir tener el tiempo de retraso por tipo de avion
#Ejemplo: delay_tailnum (retrasos por el numero de cola)

delay_tailnum <- not_cancelled %>%
  group_by(tailnum) %>%
  summarise(delay = mean(arr_delay))
#para ver la distribucion de esos aviones haremos un ggplot;
ggplot(delay_tailnum, mapping = aes(x=delay))+
  geom_freqpoly(binwidth = 5) #es como un histograma pero visualiza la distribucion de una variable que es continua
ggplot(delay_tailnum, mapping = aes(x=delay))+
  geom_histogram(binwidth = 5)
#Tambien podemos añadir nosotros mismo el count, permitiendonos utilizar funciones como geom_point
delay_tailnum <- not_cancelled %>%
  group_by(tailnum) %>%
  summarise(delay = mean(arr_delay),
            count = n()
  )
#ggplot2:
ggplot(delay_tailnum, aes(x = count, y = delay))+
  geom_point(alpha = 0.1)
# En el grafico claramente podemos visualizar que contra mas numero de vuelos tenga una linea (numero de cola), menor sera su retraso
# Por lo contrario, contra menos numero de vuelos tenga, su retraso es mucho mayor

#Para visualizar datos mas especificamente, podemos hacer un filtro de interes:
delay_tailnum %>%
  filter(count>30) %>%
  ggplot(mapping = aes(x=count, y=delay))+
  geom_point(alpha=0.2)
#Dato y tip para R: Utilizando " Ctrl + Shift + P " reenviaras la ultima linea de codigo que ha sido corrida
#esto puede ser util cuando se quiere cambiar valores de filtro para pobrar rangos y obtener diferentes resultados

##### 9. EL EJEMPLO DEL BEISBOL #####
install.packages("Lahman")
library(Lahman)
##data que vamos a usar "Batting"
View(Batting)
?Batting
#AB: numero de veces que el bateador ha tenido la oportunidad de ir a batear
#H : numero de hits del bateador y llega a la primera base
#convirtiendo a formato tibble:
batting <- as_tibble(Batting)
#Luego comenzamos nuestra pipe:
batters <- batting %>%
  group_by(playerID) %>% 
  summarise(hits = sum(H, na.rm = T), #dependiendo cuantas temporadas tenga un jugador, se repetira durante los años que se tiene en la data
            bats = sum(AB, na.rm = T),
            bat_average = hits/bats
  )
#Tomando este filtro como base, podemos filtrar deacuerdo a lo que estemos buscando y plotear
batters %>% 
  filter(bats > 50) %>%
  ggplot(mapping = aes(x=bats, y = bat_average))+
  geom_point(alpha = 0.2)+
  geom_smooth(se = F)
#Se puede ver en el grafico que conforme los beisbolistas batean mas, tienen tambien mas hits en promedio
##NOTA PERSONAL: esta data puede ser bonita para utilizar gganimate, ya que tenemos los años, solo probar la carrera con uno o dos beisbolistas seria xvere
#Mas analisis:
batters %>%
  filter(bats > 100) %>%
  arrange(desc(bat_average))

#EJERCICIO: Sacar variables interesantes y explorar la data para descubrir relaciones           

##### 10. FUNCIONES ESTADISTICAS UTILES #####
#Vamos a clasificarlas por familias:

##* Medidas de Centralizarion:
not_cancelled %>% #trabajar con esta data de frente nos evita estar sacando los NA por cada variable
  group_by(carrier) %>%
  summarise(
    mean = mean(arr_delay),
    mean2 = mean(arr_delay[arr_delay > 0]),
    median = median(arr_delay)
  )

##* Medidas de Dispersion: medidad para saber si los datos estan muy concentrados respecto a su valor medio o existe disparidad en los datos
not_cancelled %>%
  group_by(carrier)%>%
  summarise(
    sd = sd(arr_delay), #standard deviation
    iqr = IQR(arr_delay), #rango intercuartilico
    mad = mad(arr_delay)  #median Absoluto deviation. i.e the median of the absoluto deviations from the median
  )%>%
  arrange(desc(sd))

##* Medidas de orden: Intercuartiles
not_cancelled %>%
  group_by(carrier)%>%
  summarise(
    first = min(arr_delay),
    q1 = quantile(arr_delay, 0.25),
    median = quantile(arr_delay, 0.5), #osea la mediana
    q3 = quantile(arr_delay, 0.75),
    last = max(arr_delay)
  )
#analizando los resultados, podemos decir para la observacion #1 que el 25% de los vuelos de la compañia "9E" salen 21 minutos antes de la hora pactada
#asi mismo, sabemos que el 50% de sus vuelos sale 7 minutos antes. Asi como el 75% salen como maximo con 15 minutos de retraso, mientras que el ultimo 25% salen con mas de 15 minutos de retraso

##* Medidas de posición: son medidas de ranking
not_cancelled %>%
  group_by(carrier)%>%
  summarise(
    first_dep = first(dep_time),
    second_dep = nth(dep_time, 2),
    third_dep = nth(dep_time,3),
    last_dep = last(dep_time)
  )
#una variante puede ser
not_cancelled %>%
  group_by(carrier)%>%
  mutate(rank = min_rank(dep_time)) %>%
  filter(rank %in% range(rank))

##* Funciones de conteo
flights %>% #usamos flights por que queremos eliminar los NA (que son vuelos fallidos que no se producieron) en el summarise
  group_by(dest) %>%
  summarise(
    count = n(),
    carriers = n_distinct(carrier),
    arrivals = sum(!is.na(arr_delay))
  )%>%
  arrange(desc(carriers))
#En los resultados, podemos que el numero total de vuelos para el primer destino es mayor al numero de llegadas (esto es por que en el summarise la variable arrivals resta los NA)
#claro para saber este dato mas rapido, podemos usar la data not_cancelled directamente!
not_cancelled %>% count(dest) #count es el "n"
#ya que hacemos el conteo, tambien podemos ponderar:
not_cancelled %>% 
  count(tailnum, wt=distance) #suma todas las distancias del avion x (tailnum) ha hecho

##* sum/mean de valores lógicos
not_cancelled %>%
  group_by(year, month, day) %>%
  summarise(
    n_prior_5 = sum(dep_time < 500)
  )
#Otro ejemplo
not_cancelled %>%
  group_by(year, month, day) %>%
  summarise(more_than_hour_delay = mean(arr_delay >60))
not_cancelled %>%
  group_by(carrier) %>%
  summarise(more_than_hour_delay = mean(arr_delay >60))%>%
  arrange(desc(more_than_hour_delay))

##### 11.AGRUPACIONES MULTIPLES Y DESAGRUPACIONES #####
daily <- group_by(flights, year, month, day) #agrupamos ya no solo de a uno, sino con muchas variables. Es como la construccion de un codigo individual juntando mas de 2 codigos.
(per_day <- summarise(daily, n_fl = n()))
(per_month <- summarise(per_day, n_fl = sum(n_fl)))
(per_year <- summarise(per_month, n_fl = sum(n_fl)))
#Estos son funciones enrolladas, cada una llama a la anterior
#Esta tecnica funciona bien para count, para sumas. Pero para promedios y variancias no es tan facil ya que hay que ponderar las medias y variancias en base al numero de elementos o muestras de cada una de las sub divisiones!
business <-  group_by(flights, carrier, dest, origin)
summarise(business, n_fl = n()) %>%
  summarise(n_fl = sum(n_fl)) %>%
  summarise(n_fl = sum(n_fl)) #vamos llendo desde el la agrupacion mas detallada, hasta el grupo mas grande (carrier), obteniendo siempre la suma de los counts

#Y si queremos desagrupar, borrar alguna funcion que le hayamos aplicado a los grupos, entonces usaremos ungroup():
#Puedes ir con esta funcion, eliminando los detalles que habias introducido en los grupos
#Con el primer ejemplo (daily):
daily %>% 
  ungroup() %>% #desagrupa y da la data original
  summarise(n_fl = n())#este ultimo paso lo hacemos para demostrar que ya no hay agrupaciones
#con el segundo ejemplo: 
business %>%
  ungroup() %>%
  summarise(n_fl =n())

##### 12.ULTIMO CAPITULO #####
#ejemplos diversos:
flights %>%
  group_by(year, month, day) %>%
  filter(rank(desc(arr_delay))<10)-> temp #podemos hacer un filtro del multiagrupamiento. En este caso, hacemos un top 9 respecto del orden descendiente de arr_delay
temp
#Otro ejemplo: agrupamos nuestra data por destino y luego filtramos los destinos con un numero de vuelos mayor a 365
popular_dest <-  flights %>%
  group_by(dest) %>%
  filter(n()>365)
View(popular_dest)

#Otro ejemplo, partiendo desde el resultado anterios, podemos seguir filtrando, mutando y seleccionando: 
popular_dest %>%
  filter (arr_delay >0) %>%
  mutate(prop_delay = arr_delay/sum(arr_delay)) %>%
  select(year:day, dest, arr_delay, prop_delay)

#Notas, es mejor no utilizar la combinacion de estas funciones de esta manera. Es mejor siempre aplicar calculos y filtro a agrupaciones y con la funcion summarise.
#esto nos dara mejor manero de la trazavilidad de nuestros calculos. Aun asi, estas herramientas nos da la posibilidad de hacer un rapido escaneo










