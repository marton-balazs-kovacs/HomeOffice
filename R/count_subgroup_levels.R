count_subgroup_levels <- function(df, subvar_name) {
  subvar_name <- dplyr::sym(subvar_name)
  
  df %>%
    filter(!is.na(!!subvar_name)) %>% 
    percent_by_group(., !!subvar_name)
}
