get_levels <- function(df, var) {
  var <- sym(var)
  
  df %>% 
    dplyr::distinct(.data[[var]]) %>% 
    dplyr::pull(.data[[var]])
}
