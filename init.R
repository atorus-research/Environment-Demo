library(valtools)

vt_use_report("Demo Environment Validation")

renv::init()

vt_use_req("R-Base/requirements")
vt_use_test_case("R-Base/cases")
vt_use_test_code("R-Base/tests")

vt_use_req("Tplyr/requirements")
vt_use_test_case("Tplyr/cases")
vt_use_test_code("Tplyr/tests")

vt_use_req("dplyr/requirements")
vt_use_test_case("dplyr/cases")
vt_use_test_code("dplyr/tests")

vt_validate_report()

