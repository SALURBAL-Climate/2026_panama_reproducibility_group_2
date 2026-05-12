# Exploratory plots ----
plot(df$date, df$deaths)
plot(df$date, df$temp)
plot(df$date, df$pm25)
plot(df$temp, df$pm25)
plot(df$deaths, df$temp)
plot(df$deaths, df$pm25)

# Exploratory tables ----
df |> 
  summarize(deaths = sum(deaths), temp = mean(temp))

