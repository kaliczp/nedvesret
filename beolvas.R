## Követelmény: legyen egy mappa/mappák, amiben benne vannak a feldolgozandó fájlok.
## Itt a nevük konvertalt2022 és konvertalt2023
## Fájl lista létrehozás
ttev  <- 2022
ttmappanev <- paste0("konvertalt", ttev, "/")
txtfiles <- dir(ttmappanev, pattern = "TXT")

### Beolvasás
## submodule szkript behívása
source("smartbe/smartbe.R")

## Az első fájl beolvasása
nedvesret <- smartbe(paste0(ttmappanev, txtfiles[1]), channel = 1)
for(ttfile in txtfiles[-1]) {
    nedvesret <- rbind(nedvesret, smartbe(paste0(ttmappanev, ttfile), channel = 1))
}
## Next year
ttev  <- 2023
ttmappanev <- paste0("konvertalt", ttev, "/")
txtfiles <- dir(ttmappanev, pattern = "TXT")
for(ttfile in txtfiles) {
    nedvesret <- rbind(nedvesret, smartbe(paste0(ttmappanev, ttfile), channel = 1))
}
