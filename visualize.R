# visualize.R
# Chargement des packages nécessaires
library(ggplot2)

# Création de données simulées
set.seed(123)
data <- data.frame(
  category = rep(c("A", "B", "C"), each = 50),
  value = c(rnorm(50, mean = 10, sd = 2), rnorm(50, mean = 15, sd = 3), rnorm(50, mean = 20, sd = 4)),
  group = rep(c("X", "Y"), 75)
)

# Création d'un graphique en barre empilé avec ggplot2
ggplot(data, aes(x = category, y = value, fill = group)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Visualisation des valeurs par catégorie et groupe",
       x = "Catégorie",
       y = "Valeur",
       fill = "Groupe") +
  theme_minimal()