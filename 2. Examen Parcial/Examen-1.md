Examen 1
================

# Base de datos: Huella

En la ciudad de Arequipa se quiere analizar la influencia del consumo de
energía y el tamaño de las empresas en su generación de emisiones de
gases efecto invernadero. Para ello, se ha realizado un muestreo
aleatorio simple de 30 muestras en la ciudad. Se sabe que esta muestra
es representativa para cada una de los tipos de empresas que funcionan
en su ciudad en relación con su tamaño (Empresa chica, mediana, grande).
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
-   HuellaCarbono: Es el calculo de la huella de carbono, expresado en
    toneladas de CO2 equivalente (anual).
-   ConsumoEnergia: Es el consumo de energía anual (expresado en
    MegaWatts)
-   TamañoEmpresa: Variable de tipo categórica que agrupa a las empresa
    según en numero de trabajadores.

De la base de datos “Huella” y del enunciado anterior, calcule y discuta
los resultados obtenidos a las siguientes preguntas:

##### 1. Calcule la media, mediana y desviacion estandar de emisiones de Toneladas de CO2 equivalente anuales (HuellaCarbono) para cada uno de los tipos de empresa segun su tamaño. Grafique las diferencias o similitudes con un grafico de BoxPlot o Grafico de Cajas. **Interprete los resultados**.

##### 2. Calcule la media, mediana y desviacion estandar ddel cosumo de energia expresado en MegaWatts anuales (ConsumoEnergia) para cada uno de los tipos de empresa segun su tamaño. Grafique las diferencias o similitudes con un grafico de BoxPlot o Grafico de Cajas. **Interprete los resultados**.

##### 3. Con las pruebas aprendidas hasta el momento (semana 3), evidenciar o no, si existe alguna relacion entre las variables “HuellaCarbono” y “ConsumoEnergia”. Calcule y gráfique para evidenciar la potencial relación entre las variables o la ausencia de relación. **Interprete los resultados**.

##### 4. Estime la media poblacional para la variable “HuellaCarbono” y obtenga adicionalmente sus intervalos de confianza a un nivel de significancia del 5%. Consejo: Utilice paquete DescTools. **Interprete los resultados**.
