install.packages("readr")
install.packages("lubridate")
install.packages("psych")

library(readr)
library(dplyr)
library(data.table)

#Note the /mnt/project/ prefix, this directs the system to read the file from your project 
#you do not need to specify project ID, e.g. /mnt/project/your/filepath/here.txt
heterozygote_readin_allancs = data.table::fread("/mnt/project/Resources/allancs.invalid.sample") %>% as.data.frame()


print("INSERT YOUR RCODE HERE")

#write file to a readable format
write.table(Exclsuion_list, file = "./processed_data.txt")

#you need to use dx upload to return the files to your file system or they will be lost when you terminate the r studio session
system("dx upload processed_data.txt --path=/Laurences_file_labyrinth/")
