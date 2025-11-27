



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

#animal_sounds <- function(animal, sound) {
#  stopifnot(is.character(animal) & length(animal) == 1)
#  stopifnot(is.character(sound) & length(sound) == 1)
#
#  paste0("The ", animal, " says ", sound, "!")
#}



#animal_sounds <- function(animal, sound) {

#  if(!rlang::is_character(animal, n=1)){
#    cli::cli_abort(c("{.var animal} must be a single string",
#                     "i"= "It was {.type {animal}} of length {length(animal)} instead."))
#  }

#  if(!rlang::is_character(sound, n=1)){
#    cli::cli_abort("`sound` must be a single string")
#  }
#
#  paste0("The ", animal, " says ", sound, "!")
#}




check_arg <- function(arg, n = 1){

  if(!rlang::is_character(arg, n=n)){
    cli::cli_abort(c("{.var {rlang::caller_arg(arg)}} must be a character vector of length {n}.",
                     "i"= "It was {.type {arg}} of length {length(arg)} instead."),
                   call = rlang::caller_env(),
                   class = "error_wrong_length_or_not_string")
  }
}



animal_sounds <- function(animal, sound = NULL) {

  check_arg(animal)


  if (is.null(sound)) {
    paste0("The ", animal, " makes no sound.")
  } else {

  check_arg(sound)

  paste0("The ", animal, " goes ", sound, "!")
  }
}


