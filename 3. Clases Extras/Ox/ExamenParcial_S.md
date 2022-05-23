Examen Parcial
================

# Base de datos

En la ciudad de Arequipa se quiere analizar la influencia del consumo de
energía y el tamaño de las empresas en su generación de emisiones de
gases efecto invernadero. Para ello, se ha realizado un muestreo
aleatorio simple de 30 muestras en la ciudad. Se sabe que esta muestra
es representativa para cada una de los tipos de empresas que funcionan
en su ciudad en relación con su tamaño (Empresa chica y grande).

La base de datos obtenida, la pueden descargar:

``` r
library(tidyverse)
```

``` r
Huella <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Huella.csv")
```

Laa base de datos “Huella”, tiene 4 variables de estudio. A continuación
se describen cada una de ellas:

-   Nombre: Variable de tipo nominal que representa el nombre de la
    empresa.
-   HuellaCarbono: Es el cálculo de la huella de carbono, expresado en
    toneladas de CO2 equivalente (anual).
-   Consumo.Energia: Es el consumo de energía anual (expresado en
    MegaWatts)
-   Consumo.Agua: Es el consumo de agua anual
-   Ganancias.Anual: Es la ganancia anual de la empresa en millones de
    dolares
-   TAEM1 y 2: Variable de tipo categórica que agrupa a las empresa
    según en número de trabajadores con 2 niveles (tenemos la versión
    cualitativa en letras y en codigo).

# Preguntas:

De la base de datos “Huella” y del enunciado anterior, calcule y discuta
los resultados obtenidos a las siguientes preguntas:

##### P1.

Calcule la media, mediana y desviacion estandar del cosumo de energia
expresado en MegaWatts anuales (Consumo de Energia) para cada uno de los
tipos de empresa segun su tamaño. Grafique las diferencias o similitudes
con un grafico de BoxPlot o Grafico de Cajas. **Discuta e interprete los
resultados. Asi mismo genere una conclusión final**.

##### P2.

Con las pruebas aprendidas hasta el momento (semana 7), evidenciar o no,
si existe alguna relación entre las variables “Huella de Carbono” y
“Consumo de Energia”. Calcule y gráfique para evidenciar la potencial
relación entre las variables o la ausencia de relación. **Discuta e
interprete los resultados. Asi mismo genere una conclusión final**.

##### P3.

Asumiendo como su poblacion las 50 observaciones de la base de datos
Huella, calcule el tamaño muestral para estimar la media del consumo de
agua. Para el calculo tenga en consideración un error muestral de 0.1 de
metros cúbicos. **Interprete los resultados. Asi mismo genere una
conclusión final**.

##### P4.

Realizar la prueba de hipótesis adecuada para comprobar si es que las
variables cuantitativas “Ganancias Anuales” y “Huella de carbono” tienen
o no tienen una distribución normal (nivel de significancia del 5%).
**Gráfique, discuta e interprete los resultados. Asi mismo genere una
conclusión final**
