Examen Final
================

# Base de datos para el examen: Inundación

La base de estudio **Inundacion** se ha obtenido con el objetivo de
evaluar la potencial relación que existe entre el numero de inundaciones
anuales en diferentes zonas y su relación con otras variables medidas en
cada zona. La base de datos, evalúa 50 zonas diferentes impactadas al
menos 1 vez por año con inundaciones de ciudades cercanas al mar. Las
variables del estudio se pueden ver en la siguiente base de datos:

``` r
library(tidyverse)
Inundacion <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Inundacion.csv")
```

La base de datos “Inundacion”, tiene 8 variables de estudio. A
continuación se describen cada una de ellas:

-   Número de Inundaciones: Brinda el numero de inundaciones anuales en
    la zona de estudio.
-   Temperatura: Representa la temperatura anual promedio en la zona de
    estudio (medida en grados centígrados).
-   Precipitacion: Representa la precipitación anual promedio en la zona
    de estudio (medida en “mm”).
-   Velocidad.Viento: Mide la velocidad del viento promedio en
    kilómetros por hora.
-   Zona.Sismica1: Variable cualitativa binaria que nos indica si la
    zona de estudio es sísmica o no (esta es un tipo de variable de tipo
    “character” en R).
-   Zona.Sismica2: Variable cualitativa binaria que nos indica si la
    zona de estudio es sísmica o no (esta es un tipo de variable de tipo
    numérico en R). El número 1, significa que se trata de una zona
    sísmica y 0 que no se trata de una zona sísmica.
-   CercaniaMar: Variable categórica que sirve de referencia para saber
    la cercanía al mar de la zona monitoreada.
-   Altitud: Metros sobre el nivel del mar.

Con esta base de datos, responda las siguientes preguntas:

### Preguntas:

##### Pregunta 1:

Realice el contraste de hipótesis correcto para verificar si hay
diferencias significativas entre los promedios de la **temperatura**
para los 3 tipos de ciudades según su distanciamiento del mar
(**CercaniaMar**). Grafique, explique, discuta e interprete todos los
resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 2:

Filtre la base de datos Inundación de tal manera que solo se quede con
aquellas ciudades “muy cercanos” y “lejano”. Con la nueva base de datos
contraste si existen diferencias significativas en el promedio de
velocidad de viento entre lugares muy cercanos versus lugares lejanos.
Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 3:

Determine si existe asociación significativa al 95% de confianzas entre
las variables zona sísmica y cercania al mar. Grafique, explique,
discuta e interprete todos los resultados. Finalmente, concluya
**(Puntaje: 5 puntos)**.

##### Pregunta 4:

Realice una regresión lineal simple entre la variable dependiente
**Número de inundaciones** y la variable independiente **Temperatura**.
Realice todos los análisis aprendidos y necesarios para encontrar el
mejor modelo “posible” con las dos variables propuestas. **Nota:**
Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.
