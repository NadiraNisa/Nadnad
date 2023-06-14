
message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scraping Data')
url<-"https://www.the-numbers.com/movies/release-schedule"
film<-read_html(url)
rilfilm<-film %>% html_nodes("table") %>% html_table()
rilis<-as.data.frame(rilfilm[[1]])
rilis=rilis[,-c(4,5)]
rilis[rilis==""]<-NA
rilis[rowSums(is.na(rilis)) != ncol(rilis), ]
colnames(rilis)<-c("X1","X2","X3")
rilis2 <- rilis %>%
  mutate(new_movie = X2) %>% 
  fill(new_movie)
rilis3 <- rilis2 %>%
  mutate(new_date = X1) %>% 
  fill(new_date)
rilis4 <- rilis3 %>%
  mutate(new_distributor = X3) %>% 
  fill(new_distributor)
rilis4<-rilis4[,-c(1:3)]
rilis5<-rilis4[!grepl("June|July|August|September|October|November|December|January|February|March|April|May", rilis4$new_distributor),]
rilis6<-rilis5[!duplicated(rilis5$new_movie), ]


#MONGODB
message('Input Data to MongoDB Atlas')
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(rilis6[sample(20,nrow(rilis6),replace=F),])
rm(atlas_conn)
