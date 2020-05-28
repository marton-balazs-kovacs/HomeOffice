subset_plot_data <- function(data, filter_var, output_type = c("percent", "count")) {
  plot_data <- 
    data %>% 
    select(participant_id, {{filter_var}}, now_before_eff, now_later_eff) %>% 
    gather(key = "time", value = "rating", -participant_id, -{{filter_var}}) %>% 
    mutate(time = case_when(time == "now_before_eff" ~ "During the pandemic",
                            time == "now_later_eff" ~ "After the pandemic")) %>% 
    filter(!(time == "During the pandemic" & is.na(rating))) %>% 
    mutate(rating = forcats::fct_relevel(rating, c("less efficient", "similarly efficient","more efficient")),
           time = forcats::fct_relevel(time, c("During the pandemic", "After the pandemic"))) %>% 
    group_by(time, {{filter_var}}) %>% 
    count(rating, .drop = FALSE) %>% 
    mutate(N = sum(n))
  
  if(output_type == "count") {
    return(plot_data)
  } else if(output_type == "percent") {
    plot_data %>% 
      mutate(percent = n / N)
  }
}
