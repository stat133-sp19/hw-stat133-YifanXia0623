
context("Test for auxillary functions")

test_that("aux_mean works as expected",{
  expect_equal(aux_mean(5,0.1),0.5)
  expect_length(aux_mean(6,0.5),1)
  expect_type(aux_mean(7,0.1), "double")
})

test_that("aux_variance works as expected",{
  expect_equal(aux_variance(5,0.1), 0.45)
  expect_length(aux_variance(6,0.5),1)
  expect_type(aux_variance(7,0.1),"double")
})

test_that("aux_mode works as expected",{
  expect_equal(aux_mode(15,0.1), 1)
  expect_length(aux_mode(6,0.5),1)
  expect_type(aux_mode(7,0.1),"integer")
})

test_that("aux_skewness works as expected",{
  expect_equal(aux_skewness(5,0.1),(1-2*0.1)/sqrt(5*0.1*(1-0.1)))
  expect_length(aux_skewness(6,0.5),1)
  expect_type(aux_skewness(7,0.1),"double")
})

test_that("aux_kurtosis works as expected",{
  expect_equal(aux_kurtosis(5,0.1),(1-6*0.1*(1-0.1))/(5*0.1*(1-0.1)))
  expect_length(aux_kurtosis(6,0.5),1)
  expect_type(aux_kurtosis(7,0.1),"double")
})
