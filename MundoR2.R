# Implícita
coer.imp <- c(2, "Texto", TRUE)
coer.imp
class(coer.imp)

#Explícita
as.numeric(coer.imp)
as.logical(coer.imp)
as.character(coer.imp)

#Subconjuntos
edades <- c(23, 25, 20, 17, 21, 22, 21, 21, 28)
edadEdinson <- edades[9]
edadEdinson
edades[1:3]
edades[c(1, 2, 3)]
edades[1:5]
edades[c(1, 5, 9)]
edades >= 25
edades[edades >= 25]
edades[edades >= 22 & edades <= 26]

#Subconjuntos de matrices
matriz1 <- matrix(data = c(1:6), nrow = 3, ncol = 2)
matriz1
matriz1[1, 1]
matriz1[3, 2]
matriz1[2, 2]
matriz1[c(1, 2), 2]

# Subconjuntos de listas
mi.lista <- list(Edimer = 25, unal = "Medellín",
                 Personas = c(1, 15, 28, 35))
mi.lista$Edimer
mi.lista$Personas
mi.lista$Personas[3]
mi.lista[[3]][3]
mi.lista[[3]][mi.lista$Personas >= 15]

# Subconjuntos de dataframes (bases de datos)
datos <- data.frame(Color = c("Morado", "Rosada", "Negro", "Gris"),
                    Pc = c("Acer", "Toshiba", "Asus", "Emachines"),
                    Anios = c(6, 5, 1, NA))
datos

datos[1, 2]
datos[[2]][1]
datos$Pc[1]
datos[1,]
datos[, 3]

# Concatenar por columna
x <- 1:5
y <- 6:10
x
y
cbind(x, y)
z <- c("a", "b", "c", "d", "e")
cbind(x, z)
#Concatenar por fila
rbind(x, y)
rbind(x[4:5], y[4:5])

#Diferente dimensión
x2 <- c(1:4, NA)
y2 <- 6:10
cbind(x2, y2)

#Lectura de datos
creditos <- read.csv(file = "Colocaciones_De_Credito_Sector_Agropecuario_2017.csv",
                     encoding = "UTF-8")

# Escritura de datos
write.csv(creditos, file = "Creditos.csv",
          row.names = FALSE)

# Cambiando formato a .Rdata
save(creditos, file = "Creditos_2017.Rdata")

# Cargando datos en .Rdata
load(file = "Creditos_2017.Rdata")








