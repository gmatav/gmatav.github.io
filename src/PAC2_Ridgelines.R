# library
library(ggridges)
library(ggplot2)
library(viridis)
library(hrbrthemes)
library(readxl)

dades <- read_excel("asturias_temp.xlsx")
dades$Fecha <- factor(dades$Fecha, levels = c("diciembre", "noviembre", "octubre", "septiembre", "agosto", "julio", "junio", "mayo", "abril", "marzo", "febrero", "enero"))

# Plot
ggplot(dades, aes(x = Temperatura_media, y = Fecha, fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01) +
  scale_fill_viridis(name = "Temperatura_media") +
  labs(title = 'Temperatures a Asturies 1990-2024') +
  theme_ipsum() +
  theme( legend.position="none", panel.spacing = unit(0.1, "lines"),  strip.text.x = element_text(size = 8) )


