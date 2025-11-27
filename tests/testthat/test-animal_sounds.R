test_that("animal_sounds produces expected strings", {
  cat_miaow <- animal_sounds("cat", "miaow")
  expect_equal(animal_sounds("dog", "woof"), "The dog goes woof!")
  expect_equal(cat_miaow, "The cat goes miaow!")
})


test_that("animal_sounds handles invalid input", {
  expect_error(animal_sounds(c("dog", "cat"), "woof"),
               class = "error_wrong_length_or_not_string")
})


test_that("error message for invalid output", {
  expect_snapshot(animal_sounds(c("dog", "cat"), "miaow"),
                  error = TRUE)
})


test_that("animals can make no sound", {
  expect_equal(animal_sounds("giraffe"), "The giraffe makes no sound.")
})
