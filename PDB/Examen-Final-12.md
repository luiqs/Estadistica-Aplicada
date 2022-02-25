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
-   Nitrogeno: Concentración de Nitrogeno en suelo (kg de Nitrogeno por
    hectarea)

# Preguntas:

##### Pregunta 1:

Compare si existen diferencias significativas entre los entre las medias
de Nitrogeno para los 4 diferentes tipos de sistema de cultivo. Asuman
que la normalidad y homogeneidad de varianzas se cumplen. **Nota:**
Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 2:

Contraste si existe o no diferencias significativas entre las medias de
la ganancias entre los tipos de cultivo 1 y 3 (ver leyenda). Utilice una
prueba **NO** PARAMETRICA, ya que se asume que no se cumple normalidad
de los datos. **Nota:** Grafique, explique, discuta e interprete todos
los resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 3:

Constraste si existe asociación entre la variable Sistema de cultivo y
calidad de agua subterranea. **Nota:** De ser necesario, grafique.
Explique, discuta e interprete todos los resultados. Finalmente,
concluya **(Puntaje: 5 puntos)**.

##### Pregunta 4:

Realice una regresión lineal simple entre la variable dependiente
**Biodiversidad** y la variable independiente **Nitrogeno**. Realice
todos los análisis aprendidos y necesarios para encontrar el mejor
modelo “posible” con las dos variables propuestas (en caso contrario
explique los motivos por los cuales el modelo no es bueno y que podría
hacer para mejorarlo). **Nota:** Grafique, explique, discuta e
interprete todos los resultados. Finalmente, concluya **(Puntaje: 5
puntos)**.
