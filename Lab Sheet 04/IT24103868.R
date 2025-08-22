setwd("C:\\Users\\IT24103868\\Desktop\\IT24103868")
branch_data <- read.table("Exercise.txt",header=TRUE, sep=",")
attach(branch_data)
fix(branch_data)



boxplot(Sales_X1,
     main="Boxplot for Sales",
     ylab = "Sales_X1",
     outline = TRUE,
     outpch = 8,
     horiZontal = TRUE)

quantile(Advertising_X2,
         probs = c(0,0.25,0.5,0.75,1))
IQR(Advertising_X2)

 #Types & scales
 #Branch:identifier(nominal)
 #scales_X1:quantitative,ration
 #Advertising_X2:quantitative,ratio
 #Years_X3:quantitative discrete,ratio
 
find.outliers <- function(x){
     q1 <- quantile(x,0.25)
    q3 <- quantile(x,o.75)
     IQR_Value<-q3-q1
     lower<-q1-1.5*IQR_Value
     upper<-q3+1.5*IQR_Value
     outlier<-x[x<lower|x>upper]
    return(outliers)
   }

