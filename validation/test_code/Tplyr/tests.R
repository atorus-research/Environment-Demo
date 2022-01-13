
# Test setup
library(Tplyr)

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("3.1", {

  res <- withr::with_envvar(
    list(NOT_CRAN = FALSE),
    withr::with_tempdir(
      tools::testInstalledPackage("Tplyr", types = "tests")
    )
  )

  expect_equal(res, 0)
})

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("3.2",{
  expect_silent(tplyr_table(mtcars, gear))
})



