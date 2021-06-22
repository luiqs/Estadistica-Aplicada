Untitled
================

# Base de datos: Inundacion

En un estudio, se quiere analizar la potencial relación que existe entre
el numero de inundaciones anuales en diferentes zonas del lugar de
estudio y su relación con la temperatura y precipitación anual. Para
dicho objetivo se obtuvo una muestra aleatoria de 40 zonas de estudio
del lugar de estudio, obteniéndose la siguiente base de datos:

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.3     v purrr   0.3.4
    ## v tibble  3.0.0     v dplyr   1.0.5
    ## v tidyr   1.0.2     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.5.0

    ## -- Conflicts ------------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

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
-   CercaniaMar: Variable categórica que sirve de referencia para saber
    la cercanía al mar de la zona monitoreada.

De la base de datos “Inundacion” y del enunciado anterior, calcule y
discuta los resultados obtenidos a las siguientes preguntas:

##### 1. Calcule la media, mediana y desviacion estandar de los valores de “Precipitacion” de las zonas muestreadas en el estudio para cada uno de los grupos de cercania al mar (Cercano y Lejano). Grafique las diferencias o similitudes entre estos dos grupos con un grafico de BoxPlot o Grafico de Cajas (de la variable precipitación). **Interprete los resultados**.

##### 2. Con las pruebas aprendidas hasta el momento (semana 3), evidenciar o no, si existe alguna relación entre las variables “Temperatura” y “Inundaciones” (número de inundaciones). Calcule y gráfique para evidenciar la potencial relación entre las variables o la ausencia de relación. **Interprete los resultados**.

##### 3. Estime la media poblacional para la variable “Temperatura” y obtenga adicionalmente sus intervalos de confianza a un nivel de significancia del 5%. Consejo: Utilice paquete DescTools. **Interprete los resultados**.

##### 4. Calcule usted si la medias poblacionales de la variable “Temperatura”, para las zonas que se encuentran cercanas versus las que se encuentran lejos, son iguales o diferentes. Tip: Prueba t de Student. **Gráfique para complementar los resultados e interprete**
