Examen 2
================

# Base de datos: Incendios

Se quiere realizar un estudio para determinar la relación que existe
entre la ocurrencia de incendios forestales, la calidad del aire y la
temperatura. Para ello se ha determinado un área de estudio y se han
delimitado 120 zonas de estudio como la población. Para cumplir con los
objetivos, se han tomado los datos de 44 zonas especificas, obteniéndose
los siguientes resultados:

``` r
library(tidyverse)
```

``` r
Incendios <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Incendios.csv")
```

La base de datos de la muestra, “Incedios”, tiene 4 variables de
estudio. A continuación se describen cada una de ellas:

-   Incendio: Es un tipo de variable binaria que toma los valores de 1
    (ocurrió al menos un incendio forestal durante el año en la zona de
    estudio) y 0 (no ocurrió ningún incendio forestal durante el año.
-   Estado: Es la variable Incendio pero sin codificar en números 1 y 0.
    Toma dos valores, Incendio, zonas donde hubo al menos un incendio al
    año y No Incendio, zonas donde no ocurrió ningún incendio durante el
    año de estudio.
-   CalidadAire: Es el valor medio de la concentración de material
    particulado de 10 micras a lo largo del año de estudio.
-   Temperatura: Es la temperatura media anual de la zona de estudio.

Tener en consideración que la desviación estándar poblacional de la
concentración de material particulado poblacional es de 2.1 y la
desviación estándar poblacional de la temperatura es 1.2.

De la base de datos Incendios y los datos brindados en el enunciado
anterior, calcule y discuta los resultados obtenidos a las siguientes
preguntas:

##### 1. Estime la proporcion poblacional de ocurrencia de incendios de la poblacion de estudio (Consejo: Utilice paquete DescTools). Adicionalmente, calcule los intervalos de confianza (asuma un nivel de confianza del 95%). **Interprete los resultados**.

##### 2 Estime la media poblacional para la variable “CalidadAire” (concentracion de material particulado) y obtenga sus intervalos de confianza (asuma un nivel de confianza del 95%. Consejo: Utilice paquete DescTools). **Interprete los resultados**.

##### 3. Con las pruebas aprendidas hasta el momento (semana 3), evidenciar o no, si existe alguna relacion entre las variables “CalidadAire” y “Temperatura”. Calcule y gráfique para evidenciar la potencial relación entre las variables o la ausencia de relación. **Interprete los resultados**.

##### 4. Realice un diagrama de cajas para evaluar el comportamiento de la variable “CalidadAire” (calidad del aire medido como material particulado) en las zonas donde ocurren incendios y aquellas zonas donde no ocurren incendios (Consejo: Grafique un gráfico de boxplot, utilice tanto la variable “Estado” como “CalidadAire” para esta tarea). Calcule la media, mediana y desviacion estandar de la concentración de material particulado para cada uno de los grupos por separado.**Interprete los resultados**.
