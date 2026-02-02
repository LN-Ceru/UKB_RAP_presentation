install.packages("readr")
install.packages("lubridate")
install.packages("psych")

library(readr)
library(dplyr)
library(data.table)


heterozygote_readin_allancs = data.table::fread("/mnt/project/Resources/allancs.invalid.sample") %>% as.data.frame()


print("INSERT YOUR RCODE HERE")


write.table(Exclsuion_list, file = "./processed_data.txt")

system("dx upload processed_data.txt --path=/Laurences_file_labyrinth/")
