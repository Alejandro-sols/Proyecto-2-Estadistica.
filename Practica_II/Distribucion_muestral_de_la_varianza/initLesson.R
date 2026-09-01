# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

set.seed(123)
poblacionTiempos <- rnorm(5000, mean = 150, sd = 14.14) 

#No estoy del todo seguro donde va la explicacion del initLesson, asi que la pongo aqui y en el documento.
#Distribución muestral de la varianza: 
# ¿Qué objetos crea? Crea un solo objeto: poblacionTiempos.

# ¿Qué información contienen esos objetos? 
# El vector de ‘poblacionTiempos’ tiene 5000 datos que representan tiempos (En milisegundos), simulados con una distribución normal de media 150 y desviación estándar de 14.14, lo que genera una varianza de aproximadamente 200.

# ¿Por qué se inicializan antes de comenzar la lección?  
# Para asegurar que la población de datos exista en la lección desde el inicio, y para ahorrar tiempo creando cada vez.

# ¿En qué actividades se utilizan? 
# Se utiliza poblacionTiempos en las actividades de la distribución muestral de la varianza, donde el alumno extrae muestras con sample(), calcula la varianza muestral s2 , simula vectores de varianzas con replicate() y analiza la distribución Chi-cuadrada.

# ¿Se utiliza set.seed()? Si ¿Por qué? 
# Para asegurarme de que salgan los mismos datos cada que se ejecuta la lección.
