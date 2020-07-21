apa_barplot <- function(data, group) {
  group <- dplyr::enquo(group)
  data %>% 
    ggplot2::ggplot() +
    ggplot2::aes(x = !!group) +
    ggplot2::geom_bar(stat = "count") +
    ggplot2::scale_y_continuous(expand = c(0,0)) +
    papaja::theme_apa()
}
