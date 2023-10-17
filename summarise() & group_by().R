####LOAD THE DPLYR PACKAGE
require(dplyr)

##LET'S LOAD THE DATASET
store <- read.csv("FINAL DEPARTMENTAL STORE.csv")



#####6.summarize()


### Find the following descriptive statistics for the net profit.

##6.1.Find the AVERAGE/mean 

summarise(store, AVG = mean(NET_PROFIT))


### MORE EXAMPLES/INSTANCES OF USING THIS FUNCTION

##6.2.Find the SUMMATION

summarise(store,SUM = sum(NET_PROFIT ))


###6.3.Find the MINIMUM and MAXIMUM

summarise(store, MINIMUM = min(NET_PROFIT),  MAXIMUM=max(NET_PROFIT))


###6.4. Find the median

summarise(store,MEDIAN = median(NET_PROFIT))


###6.5. Find the variance

summarise(store, VARIANCE = var(NET_PROFIT))


###6.6. Find the standard deviation

summarise(store, STANDARD_DEVIATION = sd(NET_PROFIT))


###6.7. Find the summary

summarise(store, SUMMARY = summary(NET_PROFIT))


###6.8. Find the quantile

summarise(store, QUANTILE = quantile(NET_PROFIT))


###6.9. Find the range

summarise(store, RANGE = range(NET_PROFIT))






##### 7.group_by().
#### It is used to group data



### Sort the data grouped by PRODUCT_TYPE

store2 <- group_by(store, PRODUCT_TYPE)



###Find the following descriptive statistics for the net profit for the sorted data.

##7.1.Find the AVERAGE/mean 

summarise(store2, AVG = mean(NET_PROFIT))


### MORE EXAMPLES/INSTANCES OF USING THIS FUNCTION

##7.2.Find the SUMMATION

summarise(store2, SUM = sum(NET_PROFIT ))


###7.3.Find the MINIMUM and MAXIMUM

summarise(store2, MINIMUM=min(NET_PROFIT),  MAXIMUM=max(NET_PROFIT))


###7.4. Find the median 

summarise(store2,MEDIAN=median(NET_PROFIT))


###7.5. Find the variance

summarise(store2, VARIANCE=var(NET_PROFIT))


###7.6. Find the standard deviation

summarise(store2, STANDARD_DEVIATION=sd(NET_PROFIT))



###7.7. Find the range

summarise(store2, RANGE=range(NET_PROFIT))



