#setwd("/home/pablo/Data-Science/Cleaning-Data/")
#setwd(list.dirs()[3])

library(data.table)
library(dplyr)
library(tidyr)

# Read subjects, activities and X (vars) from test and train folder and bind them
subjects<-rbind(fread("./test/subject_test.txt",header=FALSE),fread("./train/subject_train.txt",header=FALSE))
activities<-rbind(fread("./test/y_test.txt",header=FALSE),fread("./train/y_train.txt",header=FALSE))
vars<-rbind(read.table("./test/X_test.txt",header=FALSE),read.table("./train/X_train.txt",header=FALSE))

#Read features, labels 
features<-fread("features.txt",header=FALSE)
activity_labels<-fread("activity_labels.txt",header=FALSE)
setnames(activity_labels,names(activity_labels),c("Activity_Code","Activity"))

# Add column n to each data table so we can merge them
#subjects
subjects<-cbind(data.table(n=c(1:nrow(subjects))),subjects)
setnames(subjects,names(subjects),c("n","Subject"))
#activites
activities<-cbind(data.table(n=c(1:nrow(activities))),activities)
setnames(activities,names(activities),c("n","Activity_Code"))
activities<-merge(activities,activity_labels,b="Activity_Code")

#vars, we only keep variables that end in "means()" or "std()" as requested
vars<-vars[,features[grepl("mean\\(|std\\(",V2),V1]]
#rename variables using Google R style 
nombres<-features[grepl("mean\\(|std\\(",V2),V2]
nombres<-gsub("\\(\\)","",nombres)
nombres<-gsub("-",".",nombres)
setnames(vars,names(vars),nombres)
#add an index n so we can merge  
vars<-cbind(data.table(n=c(1:nrow(vars))),vars)

#meging subjects, activities and variables
tabla<-subjects %>% 
  merge(activities,by="n") %>%
  merge(vars,by="n")
# melt the dataset
tabla<- tabla %>%
    gather(measurement,mean.value,-(1:4))
# Create a narrow tidy summary. 
tidy_summary<-summarize(group_by(tabla,Subject,Activity,measurement),average=mean(mean.value))
write.table(tidy_summary, file="tidy_summary.txt",row.names = FALSE)
