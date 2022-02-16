
# Test setup
library(Tplyr)
library(rlang)

#' @editor Eli Miller
#' @editDate 2021-12-07
test_that("2", {
  test_1 <- tplyr_table(safetyData::adam_adsl, TRT01P)
  

  #programmatic check(s)
  testthat::expect_equal(safetyData::adam_adsl, Tplyr::pop_data(test_1), label = "T.1")
  testthat::expect_equal(expr(TRT01P), quo_get_expr(test_1$treat_var), label = "T.1")
})




