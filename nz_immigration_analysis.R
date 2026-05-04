library(ggplot2)

# Top immigrant source countries to NZ (2023) - Source: Stats NZ / OECD
country <- c("India", "Philippines", "China", "Sri Lanka", 
             "UK", "South Africa", "Fiji", "South Korea", 
             "USA", "Australia")
arrivals <- c(33000, 21300, 18600, 12000, 
              15200, 12800, 10500, 8900, 
              7600, 6500)

nz_migration <- data.frame(country, arrivals)

ggplot(nz_migration, aes(x=reorder(country, arrivals), y=arrivals)) +
  geom_bar(stat="identity", fill="#1D9E75") +
  coord_flip() +
  labs(title="Top 10 Immigrant Source Countries to NZ (2023)",
       subtitle="Source: Stats NZ / OECD",
       x="Country",
       y="Number of arrivals") +
  theme_minimal()
