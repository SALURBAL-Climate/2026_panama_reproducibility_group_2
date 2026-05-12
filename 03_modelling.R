#Libraries
library(gnm)
library(dlnm)
library(SALURhelper)

# Model 1
cbt1 <- crossbasis(
  x = df$temp,
  lag = 7,
  argvar = list(fun = "ns", knots = quantile(df$temp, c(.5, .9))),
  arglag = list(fun = "ns", knots = logknots(7, 2)),
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
