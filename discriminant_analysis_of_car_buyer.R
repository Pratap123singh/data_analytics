#discriminant analysis
Discriminant_Analysis_Car_buyer <- read_excel("C:/Users/pranj/Desktop/data_analytics/Advance Analytics/Advance Analytics-2024/Day-10_Logistic Regression & Discriminant Analsysis/Discriminant Analysis/Discriminant_Analysis_Car_buyer.xlsx")
attach(Discriminant_Analysis_Car_buyer)
str(Discriminant_Analysis_Car_buyer)
library(MASS)
ldaout<-lda(Buyer~Durability+Mileage+`Interior Design`+Look,data = Discriminant_Analysis_Car_buyer)
ldaout
#predictive model
predictive_model<-predict(ldaout,Discriminant_Analysis_Car_buyer)
predictive_model

ldaclass<-predictive_model$class
ldaclass
#confusion table
confusion_table<-table(ldaclass,Discriminant_Analysis_Car_buyer$Buyer)
confusion_table
#To find accuracy of model
accurate<-sum(diag(confusion_table)/sum(confusion_table*100))
accurate
