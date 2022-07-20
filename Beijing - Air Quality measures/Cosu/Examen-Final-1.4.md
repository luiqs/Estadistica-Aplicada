Examen Final
================

# Base de datos para el examen: Huella

En el Perú, se requiere analizar la influencia del consumo de energía,
el tamaño de las empresas y otras variables en la generación de
emisiones de gases efecto invernadero. Para ello, se ha realizado un
muestreo aleatorio de 50 mineras. Se sabe que esta muestra es
representativa para cada una de los tipos de mineras. La base de datos
obtenida, la pueden descargar:

``` r
library(tidyverse)
Huella <- read.csv("https://raw.githubusercontent.com/luiqs/Estadistica-Aplicada/main/PDB/Huella.csv")
```

La base de datos “Huella”, tiene 6 variables de estudio. A continuación
se describen cada una de ellas:

-   Nombre: Variable de tipo nominal que representa el nombre de la
    empresa.
-   Huella.Carbono: Es el calculo de la huella de carbono, expresado en
    toneladas de CO2 equivalente (anual).
-   Consumo.Energia: Es el consumo de energía promedio anual (expresado
    en MegaWatts).
-   Consumo.Agua: Es el consumo de agua promedio anual (expresado en
    metros cúbicos por segundo).
-   Ganancias.Anuales: Son las ganancias anuales de cada una de las
    minas en billones de soles.
-   TA.EM1: Variable de tipo categórica ordinal que agrupa a las empresa
    según en numero de trabajadores (chica, mediana y grande).
-   TA.EM2: Variable binaria donde empresas chicas y medianas son
    consideradas una sola categoría (representadas por el valor de 1) y
    empresas grandes otro tipo de empresa (representadas por el valor 0.

De la base de datos “Huella” y del enunciado anterior, calcule y discuta
los resultados obtenidos a las siguientes preguntas:

### Preguntas:

##### Pregunta 1:

Filtre la base de datos Huella de tal manera que solo se quede con las
empresas chicas y medianas (eliminar las grandes). Con la nueva base de
datos, compare si existen diferencias significativas entre los valores
promedios del **Huella de carbono**, comparándolos por el tamaño de la
empresa. **Nota:** Grafique, explique, discuta e interprete todos los
resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 2:

Filtre la base de datos Huella de tal manera que solo se quede con las
empresas grandes y medianas (eliminar las chicas). Con la nueva base de
datos, compare si existens diferencias significativas entre los
promedios de la variable **Ganancias anuales** para los diferentes
tamaños empresa . **Nota:** Grafique, explique, discuta e interprete
todos los resultados. Finalmente, concluya **(Puntaje: 5 puntos)**.

##### Pregunta 3:

Filtre la base de datos Huella de tal manera que solo se quede con las
empresas chicas y grandes (eliminar las medianas). Con la nueva base de
datos realice el contraste de hipótesis para determinar si la proporción
de empresas grandes es mayor al 40%. Grafique, explique, discuta e
interprete todos los resultados. Finalmente, concluya **(Puntaje: 5
puntos)**.

##### Pregunta 4:

Realice una regresión lineal simple entre la variable dependiente
**Huella.Carbono** y la variable independiente **Consumo de energía**.
Realice todos los análisis aprendidos y necesarios para encontrar el
mejor modelo “posible” con las dos variables propuestas. **Nota:**
Grafique, explique, discuta e interprete todos los resultados.
Finalmente, concluya **(Puntaje: 5 puntos)**.
