#Read the original ESPRINT candidates table
mydata = read.csv("F01_ESPRINTcandidates_20150513.csv", header=T)

#Read the list candidates from Foreman-Mackey et al. 2015
ketu = read.csv("k2ois_c1.csv")

#Select only new planet candidates
newcandidates = !(mydata$EPIC %in% ketu$EPIC)
mydata = mydata[newcandidates, ]

#Add the required columns for the website
mydata$Value = "Y"
mydata$Note = "Found by the ESPRINT team (OpenK2 initiative)"

#Change tag of WASP-85 to give credit for the original discovery

mydata[mydata$EPIC == 201862715, "Note"] = "WASP-85b http://arxiv.org/abs/1412.7761"

#Select the columns required for the submission
shorttable = mydata[ , c("EPIC", "Status", "Value", "Note")]

#Write the table in the right format
write.table(shorttable, file="binary-status-20150513-002.txt", col.names=T, row.names=F, sep="|", quote=F)

