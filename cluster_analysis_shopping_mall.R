#Cluster Analysis
Case_2_Shopping_Mall_Cluster_Analysis <- read_excel("C:/Users/pranj/Desktop/data_analytics/Advance Analytics/Advance Analytics-2024/Day-11_EFA & Cluster Analysis/Cluster Analysis/Case 2_Shopping Mall_Cluster Analysis.xlsx")
attach((Case_2_Shopping_Mall_Cluster_Analysis))
str(Case_2_Shopping_Mall_Cluster_Analysis)
#To find mean we use apply()
m1<-apply(Case_2_Shopping_Mall_Cluster_Analysis,2,mean)
m1
#To find sd we se apply()
sd1<-apply(Case_2_Shopping_Mall_Cluster_Analysis,2,sd)
sd1
#To scale
scale1<-scale(Case_2_Shopping_Mall_Cluster_Analysis,m1,sd1)
scale1
#To find the distance
distance<-dist(Case_2_Shopping_Mall_Cluster_Analysis)
print(distance, digit=3)
#To perform hierarchical clustering
hc.c1<-hclust(distance)
hc.c1
plot(hc.c1)
#To cut tree into groups
cut_tree1<-cutree(hc.c1,2)
table(cut_tree1)
cut_tree3<-cutree(hc.c1,3)
table(cut_tree3)

#To graphically see the grouping
library(cluster)
plot(silhouette(cutree(hc.c1,3),distance))
plot(silhouette(cut_tree3,distance))

#To perform Non hierarchical clustering/ K-Means clustering
kc<-kmeans(Case_2_Shopping_Mall_Cluster_Analysis,3)
kc
kc$cluster

