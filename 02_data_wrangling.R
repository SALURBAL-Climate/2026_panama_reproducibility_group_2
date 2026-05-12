# Aggregate by city and date
df <- df |> 
  group_by(across(c(sim_id, date))) |> 
  summarize(
    deaths = sum(deaths), cardio = sum(cardio), respdisease = sum(respdisease), respinf = sum(respinf),
    temp = mean(temp), pm25 = mean(pm25)
  ) |> 
  ungroup() |> 
  mutate(strata = paste0(year(date), ":", month(date), ":", wday(date))) |> 
  mutate(strata = as_factor(strata))
