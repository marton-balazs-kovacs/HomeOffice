percent_by_group <- function(data, var) {
  var <- dplyr::enquo(var)
  data %>% 
    dplyr::count(!!var) %>% 
    dplyr::ungroup()
}