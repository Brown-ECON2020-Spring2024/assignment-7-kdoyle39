test_that("Unique ID created from year and country", {
  # Get gapminder data
  data <- gapminder::gapminder

  # Create a sample dataset with unique combinations of year and country
  sampled_data <- data[sample(nrow(data), 100), ]

  # Check unique ID
  expect_equal(length(unique(paste(sampled_data$year, sampled_data$country))), nrow(sampled_data))
})