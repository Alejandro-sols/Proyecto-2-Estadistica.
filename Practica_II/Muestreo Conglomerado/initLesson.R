#Se simula una base de datos que contiene 50 servidores
#Que se dividen en 5 conjuntos de 10 cada uno con sus respectivos tiempos de carga cada servidor 

#El estudiante utilizara esto para sacar una muestra conglomerada de 2 de los 5 conjuntos

#En este caso no se utiliza una semilla ya que no necesitamos datos previamente calculados para el curso


bd_transacciones <- data.frame(
  id = 1:50,
  servidor = rep(c("Server_A", "Server_B", "Server_C", "Server_D", "Server_E"), each = 10),
  tiempo_ms = round(runif(50, 100, 300), 1)
)