percent_by_group <- function(df, var) {
  df %>% 
    dplyr::count({{var}}) %>% 
    dplyr::ungroup() %>% 
    dplyr::mutate(N = sum(n),
                  prop = round(n / N * 100, 2)) %>% 
    dplyr::arrange(factor({{var}}, levels = c("less efficient",
                                              "similarly efficient",
                                              "more efficient")))
}
