# Function to calculate efficiency proportions for subgroup
efficiency_subgroups_levels <- function(df, subvar_name, subgroup_name, efficiency_var) {
  subvar_name <- dplyr::sym(subvar_name)
  
  purrr::map(subgroup_name,
             ~ df %>% 
               dplyr::filter(.data[[subvar_name]] == .x) %>% 
               percent_by_group({{efficiency_var}})
             ) %>% 
    set_names(subgroup_name)
}
