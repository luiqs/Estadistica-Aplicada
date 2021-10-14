Examen Parcial
================

# Base de datos

En un estudio, se quiere analizar la potencial relación que existe entre
el numero de inundaciones anuales en diferentes zonas del lugar de
estudio y su relación con la temperatura y precipitación anual. Para
dicho objetivo se obtuvo una muestra aleatoria de 40 zonas de estudio
del lugar de estudio, obteniéndose la siguiente base de datos:

``` r
library(tidyverse)
```

``` r
Inundacion <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Inundacion.csv")
```

La base de datos “Inundacion”, tiene 4 variables de estudio. A
continuación se describen cada una de ellas:

-   Inundaciones: Brinda el numero de inundaciones anuales en la zona de
    estudio.
-   Temperatura: Representa la temperatura anual promedio en la zona de
    estudio (medida en grados centígrados).
-   Precipitacion: Representa la precipitación anual promedio en la zona
    de estudio (medida en “mm”)
-   Velocidad.Viento : Representa la velocidad de viento (Km/h)
-   CercaniaMar: Variable categórica que sirve de referencia para saber
    la cercanía al mar de la zona monitoreada.
-   Zona.Sismica 1 y 2: Nos informa sobre si se reporto o no movimientos
    sismicos en la zona de estudio con anterioridad (tiene tanto las
    variables en forma tipo “character” y numerica binaria).
-   Altitud: Nos brinda información de los metros sobre el nivel del mar
    de la zona en estudio.

# Preguntas:

De la base de datos “Inundacion” y del enunciado anterior, calcule y
discuta los resultados obtenidos a las siguientes preguntas:

##### 1. Calcule la media, mediana y desviacion estandar de los valores de “Precipitacion” de las zonas muestreadas en el estudio para cada uno de los grupos de cercania al mar (Cercano y Lejano). Grafique las diferencias o similitudes entre estos dos grupos con un grafico de BoxPlot o Grafico de Cajas (de la variable precipitación). **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 2. Con las pruebas aprendidas hasta el momento (semana 3), evidenciar o no, si existe alguna relación entre las variables “Temperatura” y “Inundaciones” (número de inundaciones). Calcule y gráfique para evidenciar la potencial relación entre las variables o la ausencia de relación. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 3. Estime la media poblacional para la variable “Temperatura” y obtenga adicionalmente sus intervalos de confianza a un nivel de significancia del 5%. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 4. Calcule usted si la medias poblacionales de la variable “Temperatura”, para las zonas que se encuentran cercanas versus las que se encuentran lejos, son iguales o diferentes. Complemente el analisis con la gráfica correcta. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.
