## Test mean caching...

source("hw02/cachemean.R")
x<-makeVector(c(1,2,3,4,5,6,8,9))
# no-output

x$get()
# [1] 1 2 3 4 5 6 8 9

c<-cachemean(x)
# no-output

x$getmean()
# [1] 4.75

x$getmean()
# [1] 4.75

cachemean(x)
# getting cached data
# [1] 4.75

