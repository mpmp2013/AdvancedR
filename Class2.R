#C输入输出变量都有定义

#functions: lapply,sapply,tapply,by,aggregate,mapply,Map,Reduce

#packages: plyr,ddplyr,dlplyr,adplyr

#数据类型

# vector R基础（向量运算）

rs <- list()
?list

dbl_var<-c(1,2.5,4.5)
int_var<-c(1L,6L,10L)
x<-1:3
y<-c(1,2,3) # x:integer  y:numeric
typeof(x)

install.packages("pryr")
library(pryr)
#NA是一个长度为1的逻辑向量
#NA_real_ NA_integer_ NA_character_
#判断NA要用is.na()
x[is.na(x)]

#强制转换
x<-c("a",1)
x<-c(F,T,F,"a")
#优先级：字符、数值、逻辑
as.numeric(x)
x <- c(1,2,3)
as.character(x)

x<-list(1:3,"a",c(T,F),c(2.3,5.9))
x<-list(list(list(list(y=1))))
is.recursive(x)

#c()强制将向量转换成list
x<-c(list(1,2),c(3,4))
y<-list(list(1,2),c(3,4))
str(x)
str(y)


#属性
y<-1:10
attr(y,"my nickname")<-"I am vector"
attr(y,"my nickname")
str(attributes(y))

x<-factor(c("a","b","c","a"))
?gl
class(x)
levels(x)
#因子相当于一个向量，多了一个“level”的属性
#不能使用不在因子列表里面的因子，不能合并因子
read.table(,na.strings = "")
read.table(stringsAsFactors = F)
read.csv(stringsAsFactors = F)
data.frame(stringsAsFactors = F)

df<-data.frame(x=1:3,y=c("a","b","c"),stringsAsFactors = F)
typeof(df)
class(df)

df<-data.frame(x=1:3)
df$y<-list(1:2,1:3,1:4)

#Error 会将列表中的每个元素都放入自己的列中，如果长度一样，不报错
data.frame(x=1:3,y=list(1:2,1:3,1:4))
data.frame(x=1:3,y=list(1:3,3:5,5:7))
#I()使data.frame()把列表看作一个单元
data.frame(x=1:3,y=I(list(1:2,1:3,1:4)))

