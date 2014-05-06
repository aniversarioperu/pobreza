library("ggplot2")
datos <- read.table("IncidenciaDepto20042011.csv", sep=",", row.names=1, header=TRUE)
names(datos) <- c("2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013")

# traspose matrix
datos_t <- as.data.frame(t(datos))
datos <- data.frame(Año = row.names(datos_t), datos_t)
