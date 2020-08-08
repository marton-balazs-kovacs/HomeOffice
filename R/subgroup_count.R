subgroup_count <- function(subgroub_name) {
  processed %>% 
    dplyr::count(.data[[subgroub_name]]) %>% 
    dplyr::ungroup() %>% 
    dplyr::mutate(N = sum(n),
                  prop = round(n / N * 100, 2)) %>% 
    dplyr::arrange(n) %>% 
    dplyr::rename(levels = .data[[subgroub_name]]) %>% 
    dplyr::mutate(levels = as.character(levels))
}
