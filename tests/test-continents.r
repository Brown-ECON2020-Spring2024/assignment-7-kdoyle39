test_that("Values for continent are correct", {
  # Get gapminder data
  data <- gapminder::gapminder

  # Check continent values
  expected_continents <- c("Asia", "Europe", "Africa", "Americas", "Oceania")
  actual_continents <- sort(unique(data$continent))
  expect_equal(length(actual_continents), length(expected_continents))
  expect_true(all(actual_continents %in% expected_continents))
})