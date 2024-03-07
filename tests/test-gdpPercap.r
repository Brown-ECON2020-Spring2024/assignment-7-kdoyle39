test_that("Coefficient for gdpPercap in linear regression model is approximately 0.00076", {
  # Fit linear regression model
gdpPercap <- .00076

  # Check coefficient for gdpPercap
  expect_true(abs(coef(model)["gdpPercap"] - 0.00076) < 1e-5)
})