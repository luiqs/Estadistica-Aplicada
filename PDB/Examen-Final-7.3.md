Examen Final
================

# Base de datos para el examen: Biodiversidad

Se han tomado datos de diferentes ecosistemas naturales expuestos a
actividades humanas en la amazonia de Latinoamericano. Cada observación
de la base de datos **Biodiversidad** representa a un un bosque
distinto. Cada una de las zonas se encuentran en diferentes puntos
geográficos cercano a un centro o ciudad poblada. Esta data se ha
recogido con el objetivo de estudiar las posibles conexiones entre las
actividades humanas con la calidad del agua y la biodiversidad de
especies.

La base de datos la puede obtener reproduciendo el siguiente código:

``` r
library(tidyverse)
Biodiversidad <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Biodiversidad.csv")
```

Las variables en la base de datos se describen a continuación:

-   Distancia.Ciudades: Es la distancia en kilómetros del centro poblado
    al bosque analizado.
-   Biodiversidad: Es nuestro indicador de biodiversidad, con un rango
    de valores entre 0 a 100. Donde 100 representa altamente biodiverso
    y 0, escasa biodiversidad.
-   Calidad.Agua: Para esta variable se a usado el indice de calidad del
    agua. Tiene un rango de valores del 0 al 10, donde 0 significa
    altamente contaminado y 10, agua limpia y apta para el consumo
    humano y animal.
-   Cercania: Es la distancia de la ciudad al bosque en estudio (es la
    variable cualitativa para DistanciaCiudades).
-   Actividad.Minera1: Variable cualitativa binaria (formato character
    en R) que representa la distancia de las ciudades al bosque en
    estudio.
-   Actividad.Minera2: Variable cualitativa binaria (formato numero
    en R) que representa la distancia de las ciudades al bosque en
    estudio.
-   Habitantes.Ciudad(miles): Número de habitantes en el centro poblado
    mas cercano al bosque en estudio (en miles de habitantes por
    poblado).
-   Plomo(mg/L): Concentración de plomo promedio encontrados en los ríos
    de los bosques analizados en miligramo por litro.

Con esta base de datos, responda las siguientes preguntas:

### Preguntas:

##### Pregunta 1:

Filtre la base de datos Biodiversidad de tal manera que solo se quede
con las zonas “lejanas” y “muy lejanas” (eliminar las cercanas). Con la
nueva base de datos realice el contraste de hipótesis para determinar si
la proporción zonas lejanas es mayor al 15%. Grafique, explique, discuta
e interprete todos los resultados. Finalmente, concluya **(Puntaje: 5
puntos)**.

##### Pregunta 2:

Realice una regresión lineal simple entre la variable dependiente
**Biodiversidad** y la variable independiente **distancia de las
ciudades**. Realice todos los análisis aprendidos y necesarios para
encontrar el mejor modelo “posible” con las dos variables propuestas.
**Nota:** Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 3:

Contraste si existe o no diferencias significativas entre las medias de
**Calidad de agua** para aquellos lugares donde hay y no hay actividad
minera. **Nota:** Grafique, explique, discuta e interprete todos los
resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 4:

Compare si existen diferencias significativas entre las medias de
**Habitantes** en cada una de las zonas de estudio para todas las
categorías de la variable **Cercania**. **Nota:** Grafique, explique,
discuta e interprete todos los resultados. Finalmente, concluya
**(Puntaje: 5 puntos)**.
