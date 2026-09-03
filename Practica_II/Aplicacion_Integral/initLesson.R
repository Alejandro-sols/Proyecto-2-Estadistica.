# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# Configuracion de datos para la Actividad Integradora
set.seed(123)

# Simulacion de 5000 peticiones en un servidor web
n_total <- 5000

# Tiempos de respuesta continuos (ms)
tiempos <- round(rnorm(n_total, mean = 120, sd = 15), 2)

# Estado de la peticion (1 = Exitosa, 0 = Error)
estado <- ifelse(runif(n_total) < 0.95, 1, 0)

# Dataframe poblacional
logs_servidor <- data.frame(
  id_peticion = 1:n_total,
  tiempo_ms = tiempos,
  exito = estado
)

# Primer tercio del programa: uso de snake_case
poblacion_tiempos <- logs_servidor$tiempo_ms
poblacion_exitos <- logs_servidor$exito