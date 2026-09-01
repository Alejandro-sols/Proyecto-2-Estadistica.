

bd_transacciones <- data.frame(
  id = 1:50,
  servidor = rep(c("Server_A", "Server_B", "Server_C", "Server_D", "Server_E"), each = 10),
  tiempo_ms = round(runif(50, 100, 300), 1)
)