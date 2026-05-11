library(tidyverse)
library(arrow)
library(gnm)
library(dlnm)
library(SALURhelper)

# READ FILES
df_000274 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c000274.parquet")
df_005813 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c005813.parquet")
df_020034 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c020034.parquet")
df_027882 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c027882.parquet")
df_031958 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c031958.parquet")
df_036448 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c036448.parquet")
df_048207 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c048207.parquet")
df_068978 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c068978.parquet")
df_111051 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c111051.parquet")
df_150018 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c150018.parquet")
df_178624 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c178624.parquet")
df_185362 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c185362.parquet")
df_200402 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c200402.parquet")
df_202348 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c202348.parquet")
df_254623 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c254623.parquet")
df_256108 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c256108.parquet")
df_257871 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c257871.parquet")
df_260957 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c260957.parquet")
df_306551 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c306551.parquet")
df_392199 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c392199.parquet")
df_408958 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c408958.parquet")
df_431952 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c431952.parquet")
df_450931 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c450931.parquet")
df_490248 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c490248.parquet")
df_512953 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c512953.parquet")
df_533492 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c533492.parquet")
df_538872 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c538872.parquet")
df_548811 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c548811.parquet")
df_606621 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c606621.parquet")
df_642236 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c642236.parquet")
df_645680 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c645680.parquet")
df_660354 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c660354.parquet")
df_660828 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c660828.parquet")
df_677352 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c677352.parquet")
df_677357 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c677357.parquet")
df_687598 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c687598.parquet")
df_689963 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c689963.parquet")
df_735245 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c735245.parquet")
df_747285 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c747285.parquet")
df_751506 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c751506.parquet")
df_803570 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c803570.parquet")
df_804029 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c804029.parquet")
df_822241 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c822241.parquet")
df_833506 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c833506.parquet")
df_867383 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c867383.parquet")
df_876031 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c876031.parquet")
df_914222 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c914222.parquet")
df_950907 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c950907.parquet")
df_970761 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c970761.parquet")
df_990688 <- read_parquet("C:/Users/dpw48/OneDrive - Drexel University/classes/2026_panama_reproducibility/c990688.parquet")

df <- bind_rows(df_000274, df_005813, df_020034, df_027882, df_031958, df_036448, df_048207, df_068978, df_111051, df_150018, df_178624, df_185362, df_200402, df_202348, df_254623, df_256108, df_257871, df_260957, df_306551, df_392199, df_408958, df_431952, df_450931, df_490248, df_512953, df_533492, df_538872, df_548811, df_606621, df_642236, df_645680, df_660354, df_660828, df_677352, df_677357, df_687598, df_689963, df_735245, df_747285, df_751506, df_803570, df_804029, df_822241, df_833506, df_867383, df_876031, df_914222, df_950907, df_970761, df_990688)

df <- df |> 
  group_by(across(c(sim_id, date))) |> 
  summarize(
    deaths = sum(deaths), cardio = sum(cardio), respdisease = sum(respdisease), respinf = sum(respinf),
    temp = mean(temp), pm25 = mean(pm25)
  ) |> 
  ungroup() |> 
  mutate(strata = paste0(year(date), ":", month(date), ":", wday(date))) |> 
  mutate(strata = as_factor(strata))

# Exploratory plots and tables
plot(df$date, df$deaths)
plot(df$date, df$temp)
plot(df$date, df$pm25)
plot(df$temp, df$pm25)
plot(df$deaths, df$temp)
plot(df$deaths, df$pm25)

df |> 
  summarize(deaths = sum(deaths), temp = mean(temp))

# Model 1
cbt1 <- crossbasis(
  x = df$temp,
  lag = 5,
  argvar = list(fun = "ns", knots = quantile(df$temp, c(.5, .9))),
  arglag = list(fun = "ns", knots = logknots(5, 2)),
  group = as.character(df$sim_id)
)

fit1 <- gnm(
  deaths ~ cbt1 + log(pm25),
  eliminate = strata,
  family = quasipoisson,
  data = df
)

pred1 <- crosspred(cbt1, fit1)

plot(pred1, ptype = "overall")

# Model 2
ap10 <- quantile(df$pm25, .1)
ap90 <- quantile(df$pm25, .9)

int1 <- cbt1 * (df$pm25 - ap10)
int2 <- cbt1 * (df$pm25 - ap90)

fit2_1 <- update(fit1, deaths ~ cbt1 + pm25 + int1)
fit2_2 <- update(fit1, deaths ~ cbt1 + pm25 + int2)

pred2_1 <- crosspred(cbt1, fit2_1)
pred2_2 <- crosspred(cbt1, fit2_2)

plot(pred2_1, ptype = "overall", main = "RR Temp w/ Low AP")
plot(pred2_2, ptype = "overall", main = "RR Temp w/ High AP")

# Model 3
ap_low <- as.numeric(df$pm25 < 15)
ap_high <- 1 - ap_low

int3 <- cbt1 * ap_high
int4 <- cbt1 * ap_low

fit3_1 <- update(fit1, deaths ~ cbt1 + pm25 + int3)
fit3_2 <- update(fit1, deaths ~ cbt1 + pm25 + int4)

pred3_1 <- crosspred(cbt1, fit3_1)
pred3_2 <- crosspred(cbt1, fit3_2)

plot(pred3_1, ptype = "overall", main = "RR Temp w/ Low AP")
plot(pred3_2, ptype = "overall", main = "RR Temp w/ High AP")

# We pick model 3
attrdl(
  x = df$temp,
  basis = cbt1,
  cases = df$deaths,
  coef = coef(fit3_1)[14:25],
  vcov = vcov(fit3_1)[14:25, 14:25],
  model.link = "af",
  type = "af",
  cen = 20,
  sim = FALSE
)