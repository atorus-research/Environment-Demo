
# Test setup

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("1", {
  expect_true("tests" %in% list.dirs(R.home(), full.names = FALSE, recursive = FALSE))
  expect_true(capabilities()["png"])
  expect_true(TRUE)
})

