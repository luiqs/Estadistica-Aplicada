Examen 8
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

##### 1. Calcule la media, mediana y desviacion estandar de los valores de “Precipitacion” de las zonas muestreadas en el estudio. Asi mismo, realice un histograma de la variable “Inundaciones” (o diagrama de barras, si considera a la variable cuantitativa discreta como categoria) y evalue cual es el numero de inundaciones con mayor cantidad de ocurrencias en las zonas evaluadas (calcular la moda). **Interprete ambos resultados**.

##### 2. Calcule la media, mediana y desviacion estandar de los valores de “Temperatura” de las zonas muestreadas en el estudio para cada uno de los grupos de cercania al mar (Cercano y Lejano). Grafique las diferencias o similitudes entre estos dos grupos con un grafico de BoxPlot o Grafico de Cajas (de la variable temperatura). **Interprete los resultados**.

##### 3. Con las pruebas aprendidas hasta el momento (semana 3), evidenciar o no, si existe alguna relacion entre las variables “Temperatura” y “Inundaciones” (numero de inundaciones. Calcule y gráfique para evidenciar la potencial relación entre las variables o la ausencia de relación. **Interprete los resultados**.

##### 4. Estime la media poblacional para la variable “Precipitacion” y obtenga adicionalmente sus intervalos de confianza a un nivel de significancia del 5%. Consejo: Utilice paquete DescTools. **Interprete los resultados**.