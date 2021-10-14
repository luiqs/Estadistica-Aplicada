Examen Parcial
================

# Base de datos

Se quiere realizar un estudio para determinar la relación que existe
entre la ocurrencia de incendios forestales, la calidad del aire y la
temperatura. Para ello se ha determinado un área de estudio y se han
delimitado 120 zonas de estudio como la población. Para cumplir con los
objetivos, se han tomado los datos de 40 zonas especificas, obteniéndose
los siguientes resultados:

``` r
library(tidyverse)
```

``` r
Incendios <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Incendios.csv")
```

La base de datos de la muestra, “Incedios”, tiene 4 variables de
estudio. A continuación se describen cada una de ellas:

-   Incendio 1 y 2: Es un tipo de variable binaria que toma los valores
    de 1 (ocurrió al menos un incendio forestal durante el año en la
    zona de estudio) y 0 (no ocurrió ningún incendio forestal durante el
    año). Se tienen tanto la variable en forma cualitativa nominal como
    codificada (codigo binario)
-   CalidadAire: Es el valor medio de la concentración de material
    particulado de 10 micras a lo largo del año de estudio.
-   Temperatura: Es la temperatura media anual de la zona de estudio.
-   Precipitacion.Anual: Es la precipitación anual media en mm.
-   Velocidad.Viento: Es la velocidad promedio anual para cada zona de
    estudio (Km/h)
-   Humedad.Relativa: Es la humedad relativa media anual de cada zona
    (%)
-   Extraccion.Oro 1 y 2: La variable de tipo cualitativa nos informa si
    es que existe extracción de oro en la zona (se encuentra en su forma
    textual, como también codificada en codigo binario)

Tener en consideración que la desviación estándar poblacional de la
concentración de material particulado poblacional es de 2.1 y la
desviación estándar poblacional de la temperatura es 1.2.

# Preguntas:

De la base de datos Incendios y los datos brindados en el enunciado
anterior, calcule y discuta los resultados obtenidos a las siguientes
preguntas:

##### 1. Estime la proporcion poblacional de ocurrencia de incendios de la poblacion de estudio (Consejo: Utilice paquete DescTools). Adicionalmente, calcule los intervalos de confianza (asuma un nivel de confianza del 95%). **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 2 Estime la media poblacional para la variable “Calidad de Aire” (concentración de material particulado) y obtenga sus intervalos de confianza (asuma un nivel de confianza del 95%. Consejo: Utilice paquete DescTools). **Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 3. Realice un diagrama de cajas para evaluar el comportamiento de la variable “CalidadAire” (calidad del aire medido como material particulado) en las zonas donde ocurren incendios y aquellas zonas donde no ocurren incendios (Consejo: Grafique un gráfico de boxplot, utilice tanto la variable “Estado” como “CalidadAire” para esta tarea). Calcule la media, mediana y desviacion estandar de la concentración de material particulado para cada uno de los grupos por separado.**Discuta e interprete los resultados. Asi mismo genere una conclusión final**.

##### 4. Realizar un contraste de hipótesis adecuado para comprobar si es que las variables cuantitativas “calidad del aire” y “Temperatura” siguen o no siguen una distribución normal (nivel de significancia del 5%). Complemente el contraste de hipotesis con la gráfica correspondiente. **Discuta e interprete los resultados. Asi mismo genere una conclusión final**
