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