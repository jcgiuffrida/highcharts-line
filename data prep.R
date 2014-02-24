# data from http://www.ine.gov.ve/documentos/Economia/IndicedePreciosalconsumidor/xls/Resultados/4_5_1.xls
# (has been collated and standardized)

# read in data
ven = read.csv('cpi annualized.csv', header=T)
ven = ven[1:51,]  # remove any blank rows
rownames(ven) = ven$X
ven$X = NULL

# put in javascript array
datos = c()
for (i in 1:nrow(ven)){
  datos[i] = paste("\tname: '", row.names(ven)[i], "',\n\tdata: [", paste(rev(ven[i,]), collapse=", "), "]\n}, {\n", sep="")
}  # note rev() because data comes in reverse order

write(datos, 'datos.txt')
# cat(datos)
