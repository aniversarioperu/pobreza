library("ggplot2")
datos <- read.table("IncidenciaDepto20042011.csv", sep=",", row.names=1, header=TRUE)
names(datos) <- c("2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013")

# traspose matrix
datos_t <- as.data.frame(t(datos))
datos <- data.frame(Año = row.names(datos_t), datos_t)

# Calcular disminución de la pobreza en porcentajes
a2005 <- datos[2,] - datos[1,]
a2005[1,1] <- 2005

a2006 <- datos[3,] - datos[2,]
a2006[1,1] <- 2006

a2007 <- datos[4,] - datos[3,]
a2007[1,1] <- 2007

a2008 <- datos[5,] - datos[4,]
a2008[1,1] <- 2008

a2009 <- datos[6,] - datos[5,]
a2009[1,1] <- 2009

a2010 <- datos[7,] - datos[6,]
a2010[1,1] <- 2010

a2011 <- datos[8,] - datos[7,]
a2011[1,1] <- 2011

a2012 <- datos[9,] - datos[8,]
a2012[1,1] <- 2012

a2013 <- datos[10,] - datos[9,]
a2013[1,1] <- 2013

matriz <- rbind(a2005, a2006, a2007, a2008, a2009, a2010, a2011, a2012, a2013)

ggplot(matriz, aes(Año, cumsum(Lima))) + geom_path(colour="#cbc9e2", size=1)
