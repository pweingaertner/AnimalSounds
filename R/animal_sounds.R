



#' Prints the Sound an Animal Makes
#'
#' This package prints the sound an animal makes, by creating a wrapper around [paste0()].
#'
#' @param animal A character vector of length 1
#' @param sound A character vector of length 1
#'
#' @returns A string that combines the animal name and sound
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")

animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)

  paste0("The ", animal, " says ", sound, "!")
}



