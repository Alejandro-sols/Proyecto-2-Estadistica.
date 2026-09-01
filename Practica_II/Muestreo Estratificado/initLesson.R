set.seed(5585)

bd_usuarios <- data.frame(
  id = 1:1000,
  suscripcion = sample(c("Básico", "Pro", "Admin"), size = 1000, replace = TRUE, prob = c(0.70, 0.25, 0.05)),
  dispositivo = sample(c("Movil", "laptop", "PC"), size = 1000, replace = TRUE)
)

