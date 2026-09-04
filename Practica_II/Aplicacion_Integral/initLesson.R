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

#No estoy seguro si debo ponerlo solo en el documento o que, lo pongo aqui de todas formas
#¿Qué objetos crea? n_total, tiempos, estado, logs_servidor, poblacion_tiempos, poblacion_exitos
#¿Qué información contienen esos objetos? 
#n_total: Un valor numérico entero (5000) que representa el tamaño total de la población de peticiones.
#tiempos: Un vector numérico con 5000 valores generados mediante una distribución normal (Media 120, desviación estándar 15) redondeados a dos decimales, que simulan tiempos de respuesta en milisegundos.
#estado: Un vector binario con 5000 valores (1 exitoso, 0 error), generado con una probabilidad de éxito aproximada del 95%..
#logs_servidor: Un data.frame poblacional con 5000 filas y 3 columnas (id_peticion, tiempo_ms y éxito).
#poblacion_tiempos: Un vector numérico extraido de la columna tiempo_ms de logs_servidor.
#poblacion_exitos: Un vector extraído de la columna éxito de logs_servidor.
#¿Por qué se inicializan antes de comenzar la lección?  Porque el código del initLesson.R se ejecuta automáticamente al iniciar la lección en swirl para cargar y dejar disponibles los datos poblacionales en RStudio. Esto excita que se tengan que crear los datos de forma manual cada vez que se hace el curso, así nos ahorramos tiempo todos.
#¿En qué actividades se utilizan? 
#poblacion_tiempos: Se utiliza en la toma de muestras de tiempos de respuesta (sample(poblacion_tiempos,, 30)) y en la simulación de las 1000 medias (simMedias) y 1000 varianzas muestrales (simVarianzas).
#poblacion_exitos: Se utiliza en la simulación de las 1000 proporciones muestrales de éxito (simProporciones <- replicate(1000, mean(sample(poblacion_exitos, 30))))
#logs_servidor: Se utiliza de forma de referencia teórica para identificar la población total en la primera pregunta de opción múltiple de la lección.
#¿Se utiliza set.seed()? Si ¿Por qué? Para asegurarme de que salgan los mismos datos cada que se ejecuta la lección, es lo mismo que con otras lecciones, en esta usamos rnorm y runif que simulan datos aleatorios.
