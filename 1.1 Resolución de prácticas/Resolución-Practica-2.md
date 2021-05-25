Resolución Práctica 2
================

1.  La poblacion de la ciudad de Tantan tiene un total de 120 000
    habitantes divididos en 5 regiones (Norte, Sur, Centro, Este y
    Oeste). La base de datos llamada “Tantan” presenta el número de
    habitantes por región. Un muestreo aleatorio simple se realizará
    para estimar la media poblacional de la edad de los habitantes de la
    ciudad. Asumir que se obtuvo de la muestra un error de estimacion
    (error estandar) de 0.6 y que la varianza de poblacional es igual
    a 64. De los datos suministrados calcule: El tamaño muestral para
    determinar la media de edad de los habitantes de Tantan (muestreo
    aleatorio simple).

``` r
Tantan <- tibble(Region = c("Norte", "Sur", "Centro", "Este", "Oeste"),
                 Habitantes = c(14060, 19477, 36564, 26424, 23475))
```

Resolución:

``` r
sample.size.mean(e=0.6, S=sqrt(64), N=120000, level = 0.95)
```

    ## 
    ## sample.size.mean object: Sample size for mean estimate
    ## With finite population correction: N=120000, precision e=0.6 and standard deviation S=8
    ## 
    ## Sample size needed: 680

Se necesita una muestra minima de 680 ciudadanos para estimar la edad
media poblacional a un nivel de confianza del 95% y un error máximo del
0.6.

1.  En una fabrica en la China se fabrican procesadores IntelX. Sin
    embargo, muchos de estos han resultado defectuosos. Se necesita
    saber el tamaño muestral necesario para inferir la proporcion
    poblacional de piezas defectuosas. Asuma que el error de estimación
    es del 4% y el nivel de significancia del 5% (consejo, utilizar la
    función sample.size.prop() del paquete “samplingbook” o crear su
    propia función).

``` r
sample.size.prop(e=0.04, P=0.5, N = Inf, level = 0.95) 
```

    ## 
    ## sample.size.prop object: Sample size for proportion estimate
    ## Without finite population correction: N=Inf, precision e=0.04 and expected proportion P=0.5
    ## 
    ## Sample size needed: 601

Se necesitan como minimo muestrar 601 procesadores para estimar
proporción poblacional de procesadores defectuosos a un nivel de
confianza del 95% y un error máximo del 0.04.

1.  Se requiere estimar la media de edad de una población que sigue una
    distribución normal y una desviación estandar poblacional de 18.
    Para hacerlo, tenemos una muestra aleatoria simple de 120 individuos
    extraidos de la población en estudio, obteniendose una media
    muestral de 51 años de edad. Encuentre el valor estimado de la edad
    y adicionalmente contruya los intervalos de confianza con un nivel
    de significancia del 10% (asuma una distribución normal de los
    datos). Muestra para la variable de estudio:

``` r
set.seed(100)
Edad <- rnorm(120, mean = 51, sd =18)
```

Aplicando MeanCI():

``` r
MeanCI(Edad, conf.level = 0.95)
```

    ##     mean   lwr.ci   upr.ci 
    ## 51.01198 47.78496 54.23900

De la muestra de 120 individuos se estima que la edad media poblacional
es de 53 años a un nivel de confianza del 95% y con intervalos de
confianzas igual a \[50.10;55.84\]

1.  Se requiere estimar la ganancia media de la ciudad Chenchen. Asuma
    que la población sigue una distribución normal y una varianza
    desconocida. Se muestreo para este ejercicio 36 indiviudos de la
    población, obteniendose una media de 2500 nuevos soles por mes y una
    desviación estandar muestral de 200. Encuentre el valor estimado de
    los ingresos familiares y sus intervalos de confianza con un nivel
    de significacion igual al 5% (asuma una distribución normal de los
    datos). Muestra para la variable de estudio:

``` r
set.seed(10)
Ganancias <- rnorm(36, mean = 2500, sd = 200)
```

Aplicando MeanCI():

``` r
MeanCI(Ganancias, conf.level = 0.95)
```

    ##     mean   lwr.ci   upr.ci 
    ## 2422.589 2361.694 2483.484

Interpretación:

1.  Se requiere estimar la tasa de analfabetismo en la ciudad de Tenten.
    Para ello, se ha realizado un muestreo aleatorio simple de 500
    habitantes en la ciudad. Se obtuvo de la muestra que 120 indivuos
    son analfabetos. Estime la proporcion poblacional del anafalbetismos
    para la ciudad de Tenten. De igual manera, contruya los intervalos
    de confianza (alfa = 5%).

``` r
BinomCI(x=120, n=500, conf.level = 0.95)
```

    ##       est    lwr.ci    upr.ci
    ## [1,] 0.24 0.2046379 0.2793268

1.  Nos gustaría estimar la variabilidad del tiempo promedio en la
    prestación de servicios a los clientes en una sucursal bancaria. Se
    extrajo una muestra con 61 clientes de la población en estudio,
    obteniendose una varianza muestral del 64 (asuma una distribución
    normal de los datos). Construya el intervalo de confianza con un
    nivel de significancia del 5% para la varianza de la población y
    estime su valor puntual. Muestra para la variable de estudio:

``` r
set.seed(10)
Tiempo.servicios <- rnorm(61, sd = 8)
```

Aplicando VarCI():

``` r
VarCI(Tiempo.servicios, conf.level = 0.95, method = "norm")
```

    ##      var   lwr.ci   upr.ci 
    ## 52.96555 37.39717 71.34287
