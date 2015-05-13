#Read the original ESPRINT candidates table
mydata = read.csv("F00_ESPRINTcandidates_20150513.csv", header=T)

#Add the required columns for the website
mydata$Value = "Y"
mydata$Note = "Found by the ESPRINT team (OpenK2 initiative)"

#Select the columns required for the submission
shorttable = mydata[ , c("EPIC", "Status", "Value", "Note")]

#Write the table in the right format
write.table(shorttable, file="binary-status-20150513-001.txt", col.names=T, row.names=F, sep="|", quote=F)

