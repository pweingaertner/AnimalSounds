# Prints the Sound an Animal Makes

This package prints the sound an animal makes, by creating a wrapper
around [`paste0()`](https://rdrr.io/r/base/paste.html).

## Usage

``` r
animal_sounds(animal, sound = NULL)
```

## Arguments

- animal:

  A character vector of length 1

- sound:

  A character vector of length 1

## Value

A string that combines the animal name and sound

## Examples

``` r
animal_sounds("dog", "woof")
#> [1] "The dog goes woof!"
```
