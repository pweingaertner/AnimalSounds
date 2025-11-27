test_that("animal_sounds produces expected strings", {
  cat_miaow <- animal_sounds("cat", "miaow")
  expect_equal(animal_sounds("dog", "woof"), "The dog goes woof!")
  expect_equal(cat_miaow, "The cat goes miaow!")
})


test_that("animal_sounds handles invalid input", {
  expect_error(animal_sounds(c("dog", "cat"), "woof"),
               "`animal` must be a character vector of length 1.")
})
