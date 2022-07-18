Examen Parcial
================

# Base de datos:

``` r
library(tidyverse)
```

Se han muestreado diferentes hectareas para 4 sistemas agroforestales
distintos. De ellos, se han tomado diferentes características de
importancia (tanto variables cualitativas, como cuantitativas). Responda
las preguntas a continuación en base a la base de datos y el contexto
que se propone.

La base de datos la puede obtener reproduciendo el siguiente código:

``` r
Cultivos <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Cultivos.csv")
```

-   ID: Identificación del lugar
-   Sistema: Tipo de sistema agroforetal (1 = Plantación forestal, 2 =
    Cultivo organico + Plantación forestal, 3 = Cultivo organico, 4 =
    Cultivo organico + Leguminosa)
-   Agua subterranea: Calidad de agua subterranea (0 = Mala caldidad, 1
    = Buena calidad)
-   Biodiversidad: Variable cuantitativas que mide la biodiversidad de
    insectos (rango del 1 al 100, donde 1 indica biodiversidad pobre y
    100 biodiversidad alta)
-   Pesticida: Cantidad de pesticida el suelo producto de manerjo de
    plagas (en %)
-   Ganacia: Ganancia Neta generada cada 6 meses de producción (en miles
    de soles)
-   Fertilizante: Concentración de fertilizantes en relacióin con su
    alta granulación utilizados en los sistemas de cultivos y
    plantaciones forestales (en %, porcentaje más pequeño, menos
    granulación y porcentaje más grande, mayor granulación)
-   Nitrogeno: Cantidad de Nitrogeno aplicado en el suelo (kg de
    Nitrogeno por hectarea)

# Preguntas:

##### P1.

Calcule la media, mediana y desviacion estandar de la variable
**Fertilizante** para cada uno de los sistemas de producción. Realice el
gráfico correpondiente para complementar su analisis (de barras o
histograma según corresponda). **Discuta e interprete los resultados.
Asi mismo genere una conclusión final**.

##### P2.

Con las técnicas y pruebas aprendidas hasta el momento, evidenciar o no,
si existe alguna relación entre las variables “Biodiversidad” y
“Nitrogeno”. Calcule el estadístico correcto y gráfique para evidenciar
la potencial relación entre las variables o la ausencia de las mismas.
**Discuta e interprete los resultados. Asi mismo genere una conclusión
final**.

##### P3.

Asumiendo a la base de datos **Cultivos** como su población de estudio.
Calcule el tamaño muestral necesario para estimar la media poblacional
de la variable cantidad de nitrogeno. Para el calculo tome en
consideración un error estandar de 1 kg/hectarea. Interprete los
resultados de la manera adecuada.

##### P4.

Realizar la prueba de hipótesis adecuada para comprobar si es que las
variables cuantitativas “Nitrogeno” y “Pesticida” tienen o no tienen una
distribución normal (nivel de significancia del 5%). Complemente el
analisis con la gráfica correcta. **Discuta e interprete los resultados.
Asi mismo genere una conclusión final**.