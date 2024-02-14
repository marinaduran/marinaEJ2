getwd()
nuevo_dir <- "c:/practicaGestionDatosR"
setwd(nuevo_dir)
getwd()
dir()
list.files()
if (file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "/n")
} else {
  cat("Fallo al crear directorio: ", nuevo_dir, "/n")
}

set.seed(25)#Creamos semillas para los números aleatorios
registros = 10


# 1. edades_descubrimientos
vector <- (c(200,1300,1450,1516,1800))

mean = (200+1300+1450+1516+1800)/5

# 2. cantidad_artefactos
data_frame <- data.frame(
  artefacto = c("espada","cuentas","puntas de flecha","collares"),
  cantidad = c(2,5,7,3)
)
print(data_frame)

# suma
valor_suma <- 2+5+7+3
print(valor_suma)

# 3. profundidad_hallazgos
hallazgos <- (c("yac1","yac2","yac3","yac4"))
profundidad <- (c(4,2,5,7))
max(profundidad)

# 4. materiales_encontrados
materiales_encontrados <- sample(c("collares","espadas","puntas de flecha","cuentas"))
lenght(materiales_encontrados)

# 5. "años_excavaciones"
años_excavaciones <- c(1902,1927,1950,1993,2002)
cantidad_años <- lenght(unique(años_excavaciones))

# 6. "matriz"
excavaciones_matriz <- matrix(c(4, 8, 12, 24), nrow = 2, byrow = TRUE)
años_max_excavaciones <- which.max(rowSums(excavaciones_matriz))
print(años_max_excavaciones)

# 7.
edades_por_region <- matrix(c(1:50, nrow = 2, byrow = TRUE))
region_antigua <- which.min(rowMeans(edades_por_region))
print(region_antigua)

# 8.
cantidad_artefactos <- matrix(data=1:35, nrow=2, byrow=TRUE)
periodo_artefacto <- which.max(cantidad_artefactos)
print(periodo_artefacto)

# 9.
profundidad_por_sitio <- matrix(c(7, 4, 6, 2), nrow = 2, byrow = TRUE)
sitio_menor_profundidad <- which.min(rowMeans(profundidad_por_sitio))
print(sitio_menor_profundidad)

# 10.
tiempo_material <- matrix(c(data=1:40), nrow=4, ncol=6, byrow=TRUE)
material_periodo <- which.max(colSums(tiempo_material))
print(material_periodo)

# 11.
data_frame <- data.frame(
  sitio_arqueologico = c("sitio1", "sitio2", "sitio3", "sitio4"),
  tipo_artefacto = c("art1", "art2", "art3", "art4"),
  fecha_descubrimiento = c(1950, 1990, 2000, 2003),
  descripcion = c("descripcion1", "descripcion2", "descripcion3", "descripcion4")
)
print(data_frame)

# 12.
data_frame <- data.frame(
  equipo = c("persona1", "persona2", "persona3", "persona4", "persona5"),
  sitio_arqueológico = c("sitio1", "sitio2", "sitio3"),
  fecha_inicio = c(1900),
  fecha_fin = c(2018)
)
print(data_frame)

# 13.
data_frame <- data.frame(
  esqueletos = c("esqueleto1", "esqueleto2", "esqueleto3", "esqueleto4", "esqueleto5"),
  sitio_arqueologico = c("sitio1", "sitio2", "sitio3"),
  edad_estimada = c(3, 4, 5, 6, 7),
  sexo= c("mujer", "mujer", "hombre", "mujer", "hmobre"),
  caracteristica_especial = c("cat1", "cat2", "cat3", "cat4", "cat5"),
)
print(data_frame)

# 14.
ubicaciones_georgaficas <- data.frame(
  ubicacion = c("cord1", "cord2", "cord3"),
  latitud = c("latitud", "latitud2", "latitud3"),
  lonigutd = c("alt1", "alt2", "alt3")
)
print(ubicaciones_geograficas)
