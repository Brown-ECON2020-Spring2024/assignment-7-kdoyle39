test_that("This is an example test", {
  a <- 2
  b <- 10
  expect_equal(a * b, 20)
})

test_that("Section 3 test 1 and 2", {
  expect_equal(unname(coef(model)[2]), 0.00076, tolerance = 0.00001)
  expect_equal(nobs(model), 1704)
})

test_that("Section 3 test 3", {
  expect_unique(c("year", "country"), data = data)
  expect_range(gdpPercap, 0, 1e6, data = data)
  expect_values(continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"), data = data)
})
