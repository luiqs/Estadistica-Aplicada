Examen Parcial
================

# Base de datos:

Un estudio realizo un experimento para evaluar la relación entre las
ganancias de mineras anuales y la contaminación ambiental. Para medir
las ganancias, se basaron a las ganancias reportadas anualmente en un
año especifico. Ese mismo año, se medio la concentración de mercurio en
los peces, utilizándolos de bioindicadores. Se tomo el dato de a que
altura del rió se realizo el muestreo de peces (para luego llevarlos a
laboratorio y medir la concentración de mercurio en sus cuerpos). El
estudio se realizo durante la operación activa de las minas para un año
dado. La base de datos obtenida se puede visualizar en R, mediante:

``` r
library(tidyverse)
```

``` r
Mercurio <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Mercurio.csv")
```

La base de datos “Mercurio”, tiene 4 variables de estudio. A
continuación se describen cada una de ellas:

-   NombreMinera: Variable de tipo nominal que representa el nombre de
    la minera.
-   GananciasMinera: Representan las ganancias anuales en millones de
    soles anuales de la minera.
-   CMPeces: Es la concentración de Mercurio en los peces (se considera
    moderadamente dañino de 0.3 a 0.5, y totalmente dañino para la
    salud, valores mayores al 0.5)
-   SectorRio: Variable categórica que hace referencia a la altitud en
    la que se tomaron las muestras de peces contaminados con Mercurio.

# Preguntas:

De la base de datos “Mercurio” y del enunciado anterior, calcule y
discuta los resultados obtenidos a las siguientes preguntas:

##### 1. Calcule la media, mediana y desviación estándar de la variable de concentración de mercurio en peces (CMPeces) para cada grupo de sector del rio (es decir, calcule los valores para el sector de rio Alto, Media y Baja). Grafique las diferencias o similitudes entre los grupos Alto, medio y baja (SectorRio) con un grafico de BoxPlot o Grafico de Cajas en relación con la variable “CMPeces”. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**..

##### 2. Con las pruebas aprendidas hasta el momento, evidenciar o no, si existe alguna relación entre las variables “GananciasMinera” y “CMPeces”. Calcule y gráfique para evidenciar la potencial relación entre las variables o la ausencia de relación. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**..

##### 3. Estime la media poblacional para la variable “GananciasMinera” y obtenga adicionalmente sus intervalos de confianza a un nivel de significancia del 5%. Adicionalmente, estime la concentración media poblacional de mercurio en peces y obtenga adicionalmente sus intervalos de confianza a un nivel de significancia del 5%. Consejo: Utilice paquete DescTools. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 4. Realizar la prueba de hipotesis para verificar si la variable concentración de mercurio en peces sigue o no una distrinución normal. Complemente los resultados del contraste de hipotesis con el gráfico correspondiente **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.
