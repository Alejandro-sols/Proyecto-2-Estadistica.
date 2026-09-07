set.seed(2026)

poblacion_microservicios <- data.frame(
  id_servicio = 1:500,
  tipo = sample(c("Auth", "Billing", "Catalog", "Checkout"), 500, replace = TRUE),
  tiempo_ms = round(rnorm(500, mean = 240, sd = 35), 2)
)

N_poblacional <- nrow(poblacion_microservicios)
media_verdadera <- round(mean(poblacion_microservicios$tiempo_ms), 2)
#Crea los objetos de poblacion_microservicios, N_poblacional y media_verdadera
#Estos objetos contienen un marco muestral simulado de N = 500 microservicios distribuidos en 
#cuatro capas logicas de arquitectura, con tiempos de respuesta en 
#milisegundos, junto con la media poblacional real
#Este initLesson evita que el estudiante deba escribir codigo extenso de inicializacion de datos
#sinteticos, permitiendo que la leccion se haga mas rapida
#Se una en la exploracion inicial con head(), en la inspeccion del parametro con media_verdadera,
#en el subconjunto indices_muestra y en el calculo de la media muestral con mean()
#Se usa el set.seed para poder garantizar reproducibilidad en cada computadora 