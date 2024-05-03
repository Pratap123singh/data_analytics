#discriminant analysis
Discriminant_Analysis_Car_buyer_Copy <- read_excel("C:/Users/pranj/Desktop/data_analytics/Advance Analytics/Advance Analytics-2024/Day-10_Logistic Regression & Discriminant Analsysis/Discriminant Analysis/Discriminant_Analysis_Car_buyer - Copy.xlsx")
attach(Discriminant_Analysis_Car_buyer_Copy)
str(Discriminant_Analysis_Car_buyer_Copy)
library(MASS)
ldaout<-lda(Buyer~Durability+Mileage+`Interior Design`+Look,data = Discriminant_Analysis_Car_buyer_Copy)
summary(ldaout)
ldaout
#predictive model
predictive_model<-predict(ldaout,Discriminant_Analysis_Car_buyer_Copy)
predictive_model

ldaclass<-predictive_model$class
ldaclass
#confusion table
confusion_table<-table(ldaclass,Discriminant_Analysis_Car_buyer_Copy$Buyer)
confusion_table
#To find accuracy of model
accurate<-sum(diag(confusion_table)/sum(confusion_table*100))
accurate
