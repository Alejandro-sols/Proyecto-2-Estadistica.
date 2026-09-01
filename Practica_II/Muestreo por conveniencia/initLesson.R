# Este archivo initLesson se utiliza para simular una base de datos que el estudiante utilizara para
# Experimentar con el muestreo por conglomeracion por su propia cuenta

# Los objetos creados son 'primeras_50' y 'resto_poblacion' estos se utilizan en un vector
# asignado a 'calificacion_producto' esto con el proposito de que las primeras 50 encuestas simuladas
# den un resultado sesgado y el estudiante pueda ver de primera mano un ejemplo del sesgo
# El data frame 'respuestas' simula la base de datos que contienen las encuestas


#Se utiliza la semilla '5581' para asegurar que los datos coincidan siempre con los datos establecidos en la lección.
set.seed(5581)

primeras_50 <- sample(4:5, 50, replace = TRUE)
resto_poblacion <- sample(1:3, 950, replace = TRUE)

respuestas <- data.frame(
  id_encuesta = 1:1000,
  calificacion_producto = c(primeras_50, resto_poblacion)
)

# Estos datos se utilizan en las preguntas que necesitan escribir codigo, para que el estudiante
# interactue con la base de datos y comprenda como funciona el muestreo por conveniencia.