#Binary Logistic Regression
diabetes <- read_excel("C:/Users/pranj/Desktop/data_analytics/Advance Analytics/Advance Analytics-2024/Day-10_Logistic Regression & Discriminant Analsysis/Logistic Regression/diabetes.xlsx")
attach(diabetes)
str(diabetes)

#create a model
model<-glm(type~.,data = diabetes, family = "binomial")
model

model1<-glm(type~skin+bmi+bp, data = diabetes, family = "binomial")
model1
summary(model1)
#Probability
probability<-predict(model,diabetes,type='response')
probability
#confusion matrix
t=table(actual_values=diabetes$type, predicted_values=probability>0.9)
t

#how to find threshold value
install.packages(ROCR)
ROCRPed=prediction(probability,diabetes$type)
ROCRPed
ROCRPef<-performance(ROCRPed,"tpr","fpr")
ROCRPef
plot(ROCRPef,colorize=TRUE,print.cutoff.at=seq(0.1,by=0.1))
library(rcompanion)
nagelkerke(model1)
