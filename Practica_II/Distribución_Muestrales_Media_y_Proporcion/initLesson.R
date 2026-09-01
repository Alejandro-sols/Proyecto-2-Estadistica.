set.seed(2026)

# Poblacion 1: Tiempos de ejecucion de procesos en un servidor (milisegundos)
poblacionTiempos <- round(rnorm(1000, mean = 250, sd = 30), 2)

# Poblacion 2: Estado de peticiones HTTP en una API (1 = Exitosa, 0 = Fallida)
# Proporci0n real de peticiones exitosas p = 0.88
poblacionPeticiones <- sample(c(1, 0), size = 1000, replace = TRUE, prob = c(0.88, 0.12))

# Peticiones del servidor: 85% exitosas (1), 15% con error (0)
peticionesServidor <- sample(c(1, 0), size = 10000, replace = TRUE, prob = c(0.85, 0.15))

# Datos auxiliares
N <- 1000

#No estoy del todo seguro donde va la explicacion del initLesson, asi que la pongo aqui y en el documento.
#Distribución muestrales media y proporción:
#¿Qué objetos crea? 
#Crea 4 objetos: poblacionTiempos, poblacionPeticiones, peticionesServidor y N.

#¿Qué información contienen esos objetos? 
# poblacionTiempos: 1000 tiempos de ejecución en milisegundos, con una distribucion normal con media de 250 y desviación de 30.
# poblacionPeticiones: 1000 peticiones HTTP binarias (1= éxito, 0 =falla) con 88% de éxito.
# peticionesServidor: 10000 peticiones binarias al servidor con 85% de éxito, casi lo mismo que el anterior objeto.
# N: El tamaño escalar de la población (N = 1000).

# ¿Por qué se inicializan antes de comenzar la lección? 
# Porque actúan como las “poblaciones marco” fijas sobre las cuales los usuarios sacarán muestras aleatorias durante los ejercicios. Al declararlas en el initLesson.R, esos vectores siempre existirán cuando se ejecute la lección.
#¿En qué actividades se utilizan? 
# poblacionTiempos: En la distribución muestral de la media, para extraer muestras con sample(), calcular promedios y analizar la variabilidad que sale.
# poblacionPeticiones y peticionesServidor: En la distribución muestral de la proporcion, para calcular la proporción de éxitos en distintas muestras.
# N: Como constante de referencia para el tamaño de la población.
#¿Se utiliza set.seed()? Si  ¿Por qué? 
# Para asegurarme de que R genere exactamente las mismas poblaciones aleatorias aunque se ejecute varias veces. 
