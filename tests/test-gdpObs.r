test_that("Observations for gdpPercap fall between 0 and 1e6", {
  # Get gapminder data
  data <- gapminder::gapminder

  # Check gdpPercap values
  expect_true(all(data$gdpPercap >= 0 & data$gdpPercap <= 1e6))
})