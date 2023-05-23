## Követelmény: legyen egy mappa/mappák, amiben benne vannak a feldolgozandó fájlok.
## Itt a nevük konvertalt2022 és konvertalt2023
## Fájl lista létrehozás
ttev  <- 2022
ttmappanev <- paste0("konvertalt", ttev, "/")
txtfiles <- dir(ttmappanev, pattern = "TXT")

