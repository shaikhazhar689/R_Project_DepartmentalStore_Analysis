####LOAD THE DPLYR PACKAGE
require(dplyr)

##LET'S LOAD THE DATASET
store <-read.csv("MY DEPARTMENTAL STORE .csv")



####4.select() 



###4.1. GET THE INFORMATION OF COLUMNS SELLING_PRICE,COMPANY

store1 <- select(store, SELLING_PRICE, COMPANY )
View(store1)

### MORE EXAMPLES/INSTANCES OF USING THIS FUNCTION

###4.2.GET THE INFORMATION OF COLUMNS 2 & 5

store1 <- select(store, c(2,5) )
View(store1)

###4.3. GET THE INFORMATION OF COLUMNS 2 TO 5

store1 <- select(store, 2:5 )
View(store1)

###4.4. GET THE INFORMATION OF COLUMNS STARTING WITH P

store1 <- select(store, starts_with("P"))
View(store1)

###4.5. GET THE INFORMATION OF COLUMNS ENDING WITH E
store1<- select(store, ends_with("E"))
View(store1)




###5.mutate()




###5.1. ADD A COLUMN TO SHOW THE PROFIT

store1 <- mutate(store, PROFIT = SELLING_PRICE - COST_PRICE)
View(store1)


### MORE EXAMPLES/INSTANCES OF USING THIS FUNCTION

###5.2. ADD A COLUMN TO SHOW THE PROFIT PERCENT

store2 <- mutate(store1, PROFIT_PERCENT= PROFIT/COST_PRICE*100)
View(store2)


###5.3. ADD A COLUMN TO SHOW THE NET PROFIT

store3 <- mutate(store2, NET_PROFIT=PROFIT*QUANTITY_DEMANDED)
View(store3)




###5.4.LET'S SAVE THE UPDATED FILE

write.table(store3, file = "FINAL DEPARTMENTAL STORE.csv", sep=",")
