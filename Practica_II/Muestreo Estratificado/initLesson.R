
# Se utiliza semilla, ya que en la base de datos simulada 'bd_usuarios' se le 
# asigna valor aleatorio y de esta forma aseguramos que los datos mostrados al estudiante
# sean exactos con los que hicimos el curso
set.seed(5585)

# Se crea un objeto que simula una base de datos que guarda a 1000 usuarios,
# cada usuario contiene de atributo en que dispositivo usa la suscripcion 
# y que tipo de suscripcion tiene

# Se utiliza para que el estudiante extraiga un estrato con los usuarios pro y despues con estos crea una muestra aleatoria.

bd_usuarios <- data.frame(
  id = 1:1000,
  suscripcion = sample(c("Básico", "Pro", "Admin"), size = 1000, replace = TRUE, prob = c(0.70, 0.25, 0.05)),
  dispositivo = sample(c("Movil", "laptop", "PC"), size = 1000, replace = TRUE)
)

