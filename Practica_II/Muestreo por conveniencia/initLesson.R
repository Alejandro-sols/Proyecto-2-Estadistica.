
set.seed(5581)

primeras_50 <- sample(4:5, 50, replace = TRUE)


resto_poblacion <- sample(1:3, 950, replace = TRUE)


respuestas <- data.frame(
  id_encuesta = 1:1000,
  calificacion_producto = c(primeras_50, resto_poblacion)
)