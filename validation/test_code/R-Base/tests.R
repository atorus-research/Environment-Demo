
# Test setup

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("1.1", {
  expect_true("tests" %in% list.dirs(R.home(), full.names = FALSE, recursive = FALSE))
})

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("1.2", {
  expect_equal(tools::testInstalledBasic(), 0)
})

#' @editor Eli Miller
#' @editDate 2021-12-08
test_that("2.1", {

  expect_true(capabilities()["png"])

})
