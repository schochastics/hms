test_that("parse_hms", {
  expect_equal(parse_hms("12:34:56"), hms(56, 34, 12))
  expect_equal(parse_hms("12:34:56.789"), hms(56.789, 34, 12))
  expect_equal(parse_hms(NA), hms(NA))
  expect_equal(parse_hms(c("12:34:56", NA)), as_hms(c(hms(56, 34, 12), hms(NA))))
  expect_identical(parse_hms("23:59:59.999999999"), as_hms(86399.999999999))
})

test_that("parse_hm", {
  expect_equal(parse_hm("12:34"), hms(0, 34, 12))
  expect_equal(parse_hm(NA), hms(NA))
  expect_equal(parse_hm(c("12:34", NA)), as_hms(c(hms(0, 34, 12), hms(NA))))
})
