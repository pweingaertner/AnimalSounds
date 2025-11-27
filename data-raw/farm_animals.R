## code to prepare `farm_animals` dataset goes here


animal <- c("giraffe", "ape", "goose")
sound <- c("shroushrou", "agagaga", "kwakwakwak")

farm_animals <-  data.frame(animal = animal, sound = sound)

usethis::use_data(farm_animals, overwrite = TRUE)
