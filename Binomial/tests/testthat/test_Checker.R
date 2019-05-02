library(testthat)

context("tests for Checker functions")

# Test check_prob
test_that("Test if the check_prob works",{
  expect_true(check_prob(0.5))
  expect_length(check_prob(0.6),1)
  expect_type(check_prob(0.4), "logical")

} )

# Test check_trials
test_that("Test if the check_trials works",{
  expect_true(check_trials(5))
  expect_length(check_trials(6),1)
  expect_type(check_trials(7),"logical")

})

# Test check_success
test_that("Test if the check_success works",{
  expect_true(check_success(3,10))
  expect_length( check_success(3,10),1)
  expect_type(check_trials(10),"logical")

} )
