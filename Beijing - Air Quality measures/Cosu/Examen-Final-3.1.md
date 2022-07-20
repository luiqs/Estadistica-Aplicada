Examen Final
================

# Base de datos para el examen: Incedios

Se quiere realizar un estudio para determinar la relación que existe
entre la ocurrencia de incendios forestales y otras variables. Para
dicho análisis, se dispone de una base de datos:

``` r
library(tidyverse)
Incendios <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Incendios.csv")
```

La base de datos contiene 9 variables de estudio. A continuación se
describen cada una de ellas:

-   Incendio1: Variable cualitativa binaria que toma los valores de 1
    (ocurrió al menos un incendio forestal durante el año en la zona de
    estudio) y 0 (no ocurrió ningún incendio forestal durante el año.
-   Incendio2: Variable cualitativa binaria de Incendios y No incendio
    (variable tipo character en R).
-   CalidadAire: Es el valor medio de la concentración de material
    particulado de 10 micras a lo largo del año de estudio.
-   Temperatura: Es la temperatura media anual de la zona de estudio (en
    grados centígrados).
-   Precipitacion.Anual: Es la precipitación promedio anual en unidades
    mm.
-   Velocidad.Viento: Es la velocidad de tiempo promedio anual en
    kilómetros por hora.
-   Humedad.Relativa: Es la humedad relativa promedio anual (en
    porcentajes).
-   Extraccion.Oro1: Variable cualitativa binaria que nos indica si
    existe actividad minera cercana a la zona de estudio (Si) o no
    existe (No). Es de tipo **character en R**.
-   Extraccion.Oro1: Variable cualitativa binaria que nos indica si
    existe actividad minera cercana a la zona de estudio (1) o no existe
    (0). Es de tipo **numérico en R**.

De la base de datos Incendios y los datos brindados en el enunciado
anterior, resuelva y discuta los resultados obtenidos a las siguientes
preguntas:

### Preguntas:

##### Pregunta 1:

Realice el contraste de hipótesis correcto para verificar si existen
diferencias significativas entre los promedios de la precipitación Anual
para las zonas donde ocurren incendios versus aquellos lugares donde no
ocurre. Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 2:

Realice el contraste de hipótesis correcto para validar si existe o no
asociación entre las variables **Incendio1** y **Extraccion.Oro2**.
Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 3:

Determine si existen diferencias significativas entre el promedio de
temperatura para los lugares donde se extrae oro y aquellos lugares
donde no se extrae. Grafique, explique, discuta e interprete todos los
resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 4:

Realice una regresión lineal simple entre la variable dependiente
**CalidadAire** y la variable independiente **Velocidad.Viento**.Realice
todos los análisis aprendidos y necesarios para encontrar el mejor
modelo “posible” con las dos variables propuestas. **Nota:**: Grafique,
explique, discuta e interprete todos los resultados. Finalmente,
concluya **(Puntaje: 5 puntos)**.
