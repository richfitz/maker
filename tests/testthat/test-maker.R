context("Forwarding functions")

test_that("Simple test", {
  expect_that(make(), gives_warning("'maker::make' is deprecated"))
  expect_that(make(), gives_warning("Use 'remake::make' instead"))
  expect_that(file.exists("plot.pdf"), is_true())

  make("clean")
  expect_that(m <- maker(), gives_warning("'maker::maker' is deprecated"))
  expect_that(m <- maker(), gives_warning("Use 'remake::remake' instead"))
  d <- m$make("processed")
  expect_that(d, is_a("data.frame"))
})
