
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