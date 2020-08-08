# Create function to count the number of respondents on each level of the subgroup
# and exclude levels where the level has less than 30 respondent in it
filter_subgroup_levels <- function(df, subvar_name) {
  subvar_name <- dplyr::sym(subvar_name)
  
  df %>%
    filter(!is.na(!!subvar_name)) %>% 
    count(!!subvar_name) %>% 
    filter(n > 20)
}
