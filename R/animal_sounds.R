



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
#' @examples animal_sounds("dog", "woof")






animal_sounds <- function(animal, sound = NULL) {

  check_arg(animal)


  if (is.null(sound)) {
    paste0("The ", animal, " makes no sound.")
  } else {

  check_arg(sound)

  paste0("The ", animal, " goes ", sound, "!")
  }
}

check_arg <- function(arg, n = 1){

  if(!rlang::is_character(arg, n=n)){
    cli::cli_abort(c("{.var {rlang::caller_arg(arg)}} must be a character vector of length {n}.",
                     "i"= "It was {.type {arg}} of length {length(arg)} instead."),
                   call = rlang::caller_env(),
                   class = "error_wrong_length_or_not_string")
  }
}


#' Head of a Data Frame
#'
#' Slices a data frame
#' @param data A data frame
#'
#' @param n An integer
#'
#' @export
#'

first_n <- function(data, n) {
  data |>
    dplyr::slice_head()
}

