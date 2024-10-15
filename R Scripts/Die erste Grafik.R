Daten <- read.csv("/Users/florian/Downloads/Datensatz.csv")

head(Daten)

## Frage: Zusammenhang visualisieren zwischen Alter und Gehalt

library(ggplot2)

## eingebauten Befehle

plot(Daten$Alter, Daten$Gehalt)

ggplot(Daten, aes(x=Alter, y=Gehalt)) + geom_point(size=2.5) + geom_smooth(method = "lm", se=FALSE, color="red") +
  labs(
    x = "Alter (Jahren)",
    y = "Jährliches Bruttoeinkommen (USD)",
    title = "Linearer Zusammenhang zwischen Alter und Bruttoeinkommen (USD)"
  ) +
  scale_y_continuous(breaks = seq(0,40000, 10000), limits = c(0,40000), expand = c(0,0)) +
  theme(
    panel.background = element_blank(),
    axis.line = element_line(color = "black"),
    plot.margin = unit(c(1,1,1,1), "cm"),
    plot.title = element_text(size=20, colour = "black", face="bold", hjust = 0.5, margin = margin(b = 15)),
    axis.title = element_text(size=18, face="bold"),
    axis.title.x = element_text(margin = margin(t =15)),
    axis.title.y = element_text(margin = margin(r =15)),
    axis.text = element_text(size=14, colour = "black"),
    panel.grid.major = element_line(size=0.2, colour = "grey")
  )

ggsave("/Users/florian/Downloads/grafikroh.jpg", p, dpi = 300, width = 15, height = 9) 