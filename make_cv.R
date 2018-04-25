#load packages
library("tidyverse")

#render wrapper
produce_cv <- function(publication_list = NULL, long = TRUE, ...){
  rmarkdown::render(
    input = "svm-rmarkdown-cv.Rmd", 
    params = list(publication_list = publication_list, long = long), 
    ...
  )
  system("evince svm-rmarkdown-cv.pdf", wait = FALSE)
}



for_aud <- c("Akite2015", "ANDREN2017", "Bouchet2012", "Bulafu2013_massive", "Cao_2014", "Carstensen2013", "Chen2015", "Clarke2006", "Eycott2016", "Guittar2016", "Rehfeld2016", "TELFORD2004_mexico", "TELFORD2011_novel", "TELFORD2009", "Telford2016", "Telford2013", "Telford2006_dispersal", "Trachsel2017")
length(for_aud)
produce_cv(publication_list = for_aud, long = FALSE)
