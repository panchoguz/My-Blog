my_palette = c("#DA0000", "#239f40", "#C4961A", "#CC79A7", "#C3D7A4", "#293352")

ggplot(df_graf1, aes(year, gdppc, color=country)) +
  geom_line(size = 1) +
  labs(title = "International Comparison of Real GDP per capita in 2011$",
       subtitle = "1800-2018",
       caption = "Source: Personal elaboration with Maddison Project Database 2020",
       x = "",
       y = "",
       col = NULL) +
  scale_color_manual(values = my_palette) +
  scale_x_continuous(breaks=seq(1800,2020, by = 10), position = "bottom") +
  scale_y_continuous(labels = dollar) +
  theme_tufte() +
  theme(plot.title = element_text(size = rel(1.2)),
        plot.subtitle = element_text(size = rel(1), margin=margin(0,0,20,0)),
        plot.caption = element_text(hjust = 0, face= "italic"),
        axis.text.x = element_text(angle = 90, vjust=.5, size = 8),
        axis.text.y = element_text(angle = 0, vjust=0, size = 8),
        axis.ticks.x = element_line(size = 0),
        axis.ticks.y = element_blank(),
        panel.grid.major.y = element_line(colour = "grey90"),
        panel.grid.minor.y = element_line(colour = "grey90"))
