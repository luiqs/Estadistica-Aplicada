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

# Preguntas

De la base de datos Incendios y los datos brindados en el enunciado
anterior, calcule y discuta los resultados obtenidos a las siguientes
preguntas:

##### P1.

Con la prueba de hipotesis adecuada verifique si las variables
temperatura y velocidad del viento siguen o no siguen una distribución
normal. Complementar el resultado con la gráfica correcta. **Discuta e
interprete los resultados. Asi mismo, genere una conclusión final**.

##### P2.

Asumiendo su población como las 40 observaciones de la base de datos
Incendios, calcule el tamaño muestral para estimar la media poblacional
de la variable temperatura. Tome en consideración un error de 2 grados.
**Discuta e interprete los resultados. Asi mismo genere una conclusión
final**.

##### P3.

Con las pruebas aprendidas hasta el momento (semana 7), evidenciar o no,
si existe alguna relacion entre las variables “CalidadAire” y
“Temperatura”. Calcule y gráfique para evidenciar la potencial relación
entre las variables o la ausencia de relación. **Discuta e interprete
los resultados. Asi mismo genere una conclusión final**.

##### P4.

Calcule usted si varianza poblacional de la temperatura, para las zonas
donde hay incidios versus las zonas donde no hay incendios es igual o
diferente. Complemente el contraste de hipotesis con la gráfica
correspondiente. **Discuta e interprete los resultados. Asi mismo genere
una conclusión final**.
