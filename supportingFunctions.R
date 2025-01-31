#This script contains a number of functions that will accomplish various data 
#handing or summary tasks.

#Function 1 - Country X and Y have different traditions for the delimiter in 
#their data files. Write a function that converts all files in a directory with 
#space- or tab-delimited data (.txt) into comma-separated value files.

csvfromtxt <- function(dir){
setwd(dir)
filelist = list.files(pattern = ".txt")
for (i in 1:length(filelist)){
  input <- filelist[i]
  output <- paste0(input, ".csv")
  output <- paste0(gsub("\\.txt$", "", input), ".csv")
  data = read.delim(input, header = TRUE)   
  write.table(data, file=output, sep=",", col.names=TRUE, row.names=FALSE)
  }
}

#Function 2 - Write a function to compile data from all .csv files in a 
#directory into a single .csv file. The compiled data should have the original 
#twelve columns from daily data sheets, but also country and dayofYear columns. 
#The user should be able to choose whether they want to remove rows with NA’s in
#any columns, include NAs in the compiled data but be warned of their presence, 
#or include NAs in the compiled data without a warning
  

#Function 3 - Write a function to summarize the compiled data set in terms of 
#number of screens run, percent of patients screened that were infected, male 
#vs. female patients, and the age distribution of patients.



