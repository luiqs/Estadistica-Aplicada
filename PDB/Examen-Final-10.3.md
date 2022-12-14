Examen Final
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
-   Sistema: Tipo de sistema agroforestal (1 = Plantación forestal, 2 =
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
-   Fertilizante: Concentración de fertilizantes en relación con su alta
    granulación utilizados en los sistemas de cultivos y plantaciones
    forestales (en %, porcentaje más pequeño, menos granulación y
    porcentaje más grande, mayor granulación)
-   Nitrogeno: Concentración de Nitrógeno en suelo (kg de Nitrógeno por
    hectárea)

# Preguntas:

##### Pregunta 1:

Contraste si la proporción de hectáreas en la muestra de estudio
presenta una proporción de aguas subterráneas contaminadas mayor al 60%.
**Nota:** Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 2:

Contraste si existe o no diferencias significativas entre las medias de
la concentración de nitrógeno entre los tipos de cultivo 1 y 3 (para
realizar el análisis, debe de filtrar previamente estos dos tipos de
cultivo). **Nota:** Grafique, explique, discuta e interprete todos los
resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 3:

Compare si existen diferencias significativas entre los entre las medias
de Biodiversidad para los 4 diferentes tipos de sistema de cultivo.
**Nota:** Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 4:

Realice una regresión lineal simple entre la variable dependiente
**Biodiversidad** y la variable independiente **concentración de
nitrógeno**. Realice todos los análisis aprendidos y necesarios para
encontrar el mejor modelo “posible” con las dos variables propuestas.
**Nota:** Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.
