#Two Way ANOVA
Two_way_ANOVA <- read_excel("C:/Users/pranj/Desktop/data_analytics/Advance Analytics/Advance Analytics-2024/Day-8_ANOVAs/Two Way ANOVA/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)
#factor -- Place
Two_way_ANOVA$Place<-as.factor(Two_way_ANOVA$Place)
#factor -- Education
Two_way_ANOVA$Education<-as.factor(Two_way_ANOVA$Education)
#after factor see the structure
str(Two_way_ANOVA)
#Two Way ANOVA
model<-aov(Sales~Place+Education, data = Two_way_ANOVA)
summary(model)
model1<-aov(Sales~Place+Education+Place:Education, data = Two_way_ANOVA)
summary(model1)
#To do the comparisons of means of independent variables
TukeyHSD(model1)
#To find the mean
model.tables(model1,"mean")
