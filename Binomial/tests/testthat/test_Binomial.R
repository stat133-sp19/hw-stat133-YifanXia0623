library(testthat)

context("Tests for Binomial functions")

#bin_choose
test_that("bin_choose is as expected", {
  expect_equal(bin_choose(trials = 5, success = 1),5)
  expect_type(bin_choose(trials = 6, success = 2),"double")
  expect_length(bin_choose(trials = 7, success = 3),1)
})

#bin_probability
test_that("bin_probability is as expected", {
  expect_equal(bin_probability(success = 2, trials = 5, prob = 0.5), 0.3125)
  expect_type(bin_probability(success = 2, trials = 6, prob = 0.5), "double")
  expect_length(bin_probability(success = 3, trials = 7, prob = 0.5), 1)
})

#bin_distribution
test_that("bin_distribution is as expected", {
  expect_is(bin_distribution(trials = 5, prob = 0.5), c("bindis","data.frame"))
  expect_type(bin_distribution(trials = 6, prob = 0.5),"list")
  expect_length(bin_distribution(trials = 7, prob = 0.5), 2)
})


#bin_cumulative
test_that("bin_cumulative is as expected", {
  expect_is(bin_cumulative(trials = 5, prob = 0.5), c("bincum", "data.frame"))
  expect_type(bin_cumulative(trials = 5, prob = 0.5),"list")
  expect_length(bin_cumulative(trials = 5, prob = 0.5),3)
})
