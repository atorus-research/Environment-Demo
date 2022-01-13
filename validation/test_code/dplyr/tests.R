
# Test setup
library(dplyr)

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("2.1", {

  res <- withr::with_envvar(
    list(NOT_CRAN = FALSE),
    withr::with_tempdir(
      tools::testInstalledPackage("dplyr", types = "tests")
    )
  )

  expect_equal(res, 0)
})

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("2.2", {

  expect_equal(
    count(mtcars, gear),
    data.frame(
      gear = c(3, 4, 5),
      n = c(15, 12, 5)
    )
  )

})
