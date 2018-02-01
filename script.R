library(tidyverse)
library(ggplot2)
library(ggpubr)

################### Emisiones del sector agrícola 1990-2012 ###################

emisiones_agricola <- read_csv("emisiones/agricola.csv", col_names = TRUE)

# Emisiones de fermentación entérica
pefe <- ggplot(emisiones_agricola, aes(ano, ferm_enterica)) + 
  geom_point() +
  ggtitle("Emisiones de la fermentación entérica") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de manejo de estiércol
peme <- ggplot(emisiones_agricola, aes(ano, manejo_estiercol)) + 
  geom_point() +
  ggtitle("Emisiones del manejo de estiércol") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de cutlivo de arroz
peca <- ggplot(emisiones_agricola, aes(ano, cult_arroz)) + 
  geom_point() + 
  ggtitle("Emisiones del cultivo de arroz") +
  xlab("año") +
  ylab("Gg de CO2e")

# Manejo de suelo agrícola
pmsa <- ggplot(emisiones_agricola, aes(ano, man_suelo_argi)) + 
  geom_point() +
  ggtitle("Emisiones del manejo de suelo agrícola") +
  xlab("año") +
  ylab("Gg de CO2e")

# Quema de residuos agrícolas
pqra <- ggplot(emisiones_agricola, aes(ano, quema_resi_agri)) + 
  geom_point() +
  ggtitle("Emisiones de la quema de residuos") +
  xlab("año") +
  ylab("Gg de CO2e")

# Total de emisiones de CH4
ptech4 <- ggplot(emisiones_agricola, aes(ano, tot_ch4)) + 
  geom_point() +
  ggtitle("Total de emisiones de CH4") +
  xlab("año") +
  ylab("Gg de CO2e")

# Total de emisiones de N2O
pten2o <- ggplot(emisiones_agricola, aes(ano, tot_n2o)) + 
  geom_point() +
  ggtitle("Total de emisiones de N2O") +
  xlab("año") +
  ylab("Gg de CO2e")

# Total de emisiones
pte <- ggplot(emisiones_agricola, aes(ano, tot_emisiones)) + 
  geom_point() +
  ggtitle("Total de emisiones") +
  xlab("año") +
  ylab("Gg de CO2e")

ggarrange(pefe, peme, peca, pmsa, pqra, ptech4, pten2o, pte,
          ncol = 3, nrow = 3)


######################### Emisiones del sector USCUSS #########################

emisiones_uscuss <- read_csv("emisiones/uscuss.csv", col_names = TRUE)


# Emisiones de tierras convertidas tierras forestales
etctf <- ggplot(emisiones_uscuss, aes(ano, conv_forest)) + 
  geom_point() +
  ggtitle("Emisiones de tierras convertidas \n tierras forestales") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de tierras convertidas a pastizales
etcp <- ggplot(emisiones_uscuss, aes(ano, conv_pastizal)) + 
  geom_point() +
  ggtitle("Emisiones de tierras convertidas \n a pastizales") +
  xlab("año") +
  ylab("Gg de CO2e")


# Emisiones de tierras convertidas a tierras agrícolas
etcta <- ggplot(emisiones_uscuss, aes(ano, conv_agri)) + 
  geom_point() +
  ggtitle("Emisiones de tierras convertidas \n a a tierras agrícolas") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de tierras convertidas a asentamientos
etca <- ggplot(emisiones_uscuss, aes(ano, conv_asent)) + 
  geom_point() +
  ggtitle("Emisiones de tierras convertidas \n a asentamientos") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de tierras convertidas a otras tierras
etcot <- ggplot(emisiones_uscuss, aes(ano, conv_otros)) + 
  geom_point() +
  ggtitle("Emisiones de tierras convertidas \n a otras tierras") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de incendios
edi <- ggplot(emisiones_uscuss, aes(ano, incendios)) + 
  geom_point() +
  ggtitle("Emisiones de incendios") +
  xlab("año") +
  ylab("Gg de CO2e")

# Emisiones de balance
edb <- ggplot(emisiones_uscuss, aes(ano, balance)) + 
  geom_point() +
  ggtitle("Balance de emisiones") +
  xlab("año") +
  ylab("Gg de CO2e")

ggarrange(etctf, etcp, etcta, etca, etcot, edi, edb, 
          ncol = 3, nrow = 3)