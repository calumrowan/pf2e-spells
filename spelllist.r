spelltable2 <- data.frame(matrix(ncol=3, nrow=0))
files <- list.files(pattern="*.json", full.names=TRUE, recursive=FALSE)
for (x in 1:length(files)) {
  spellname <- gsub("./", "", files[x])
  spell <- fromJSON(spellname, flatten = TRUE)
  spelltable2[nrow(spelltable2)+1,] <- c(spell$name, spell$system$level$value, paste(spell$system$traditions$value, sep=",", collapse=", "))
}
