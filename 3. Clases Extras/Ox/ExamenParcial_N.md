Examen Parcial
================

# Base de datos:

``` r
library(tidyverse)
```

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
Biodiversidad <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Biodiversidad.csv")
```

La base de datos “Inundacion”, tiene 4 variables de estudio. A
continuación se describen cada una de ellas:

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

# Preguntas:

De la base de datos “Biodiversidad”, calcule y discuta los resultados
obtenidos a las siguientes preguntas:

##### P1.

Calcule la media, mediana y desviacion estandar de la calidad de agua
para cada uno de los ecosistemas en el estudio. Asi mismo, realice un
histograma de la variable “Distancia.ciudades” (o diagrama de barras, si
considera a la variable cuantitativa discreta como categoria) y evalue
cual es distancia con mayor cantidad de ocurrencias en las zonas
evaluadas (puede aproximarlo de la grafica que realizará). **Discuta e
interprete los resultados. Asi mismo genere una conclusión final**.

##### P2.

Con las técnicas y pruebas aprendidas hasta el momento, evidenciar o no,
si existe alguna relación entre las variables “Biodiversidad” y “Calidad
de agua”. Calcule el estadístico correcto y gráfique para evidenciar la
potencial relación entre las variables o la ausencia de las mismas.
**Discuta e interprete los resultados. Asi mismo genere una conclusión
final**.

##### P3.

Asumiendo como su poblacion las 60 observaciones de la base de datos
Biodiversidad, calcule el tamaño muestral para estimar la media de la
variable calidad del agua. Para el calculo tenga en consideración un
error muestral de 0.8. **Interprete los resultados. Asi mismo genere una
conclusión final**.

##### P4.

Realizar la prueba de hipótesis adecuada para comprobar si es que las
variables cuantitativas “Distancia.Ciudades” y “Calidad.Agua” tienen o
no tienen una distribución normal (nivel de significancia del 5%).
Complemente el analisis con la gráfica correcta. **Discuta e interprete
los resultados. Asi mismo genere una conclusión final**.
