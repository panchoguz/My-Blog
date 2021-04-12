ggplot(data = df_graf1, aes(year, gdppc, color=country)) +
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
        plot.subtitle = element_text(size = rel(1),
                                     margin= unit(0.1, "cm")),
        plot.caption = element_text(hjust = 0, face= "italic"),
        axis.text.x = element_text(angle = 90, vjust=.5, size = 10,
                                   margin = margin(10, 0, 10, 0)),
        axis.text.y = element_text(angle = 0, vjust=0, size = 10),
        axis.ticks.length.x = unit(.25, "cm"),
        axis.ticks.x = element_line(size = .5),
        axis.ticks.y = element_blank(),
        panel.grid.major.y = element_line(colour = "grey90"),
        panel.grid.minor.y = element_line(colour = "grey90"))
