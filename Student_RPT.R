getwd()
#read.csv()匯入資料 header=T表示csv第一列包含變數名稱，sep=","表示資料以逗號分隔。
a=read.csv("C:/Users/Plume/Documents/Student_RPT.csv", header=T, sep=",")
str(a)
#names()來檢視變數名稱
names(a)
dim(a)
#C()改標頭名稱
names(a)<-c("year","set","school_cate","school_num","school_name","day_train","school_system","dep_name","rpt","dep_enro","dep_web","remarks")
names(a)
head(a)
library(ggplot2)
library(dplyr)
library(nycflights13)
#號碼名稱對應
school = distinct(a,school_num,school_name)
school

#依學年度
by_year <- group_by(a, year)
View(by_year)
year_103<-filter(by_year,year==103)
View(year_103)
#依公私立群組
by_set <- group_by(a, set)
View(by_set)
#依學制
by_cate <- group_by(a, school_cate)
View(by_cate)

school_26<-filter(by_cate, school_num==26 ,year == 104, school_system=="碩士班")
View(school_26)

Q = filter(a, school_num==26)
distinct(Q,school_name)
W = select(Q,dep_name,school_system,day_train,rpt,year)
E=filter(W , dep_name=="資訊管理系")
dim(E)
X<-group_by(E, school_system)
X
X<-group_by(E, school_system,year)

filter(W , school_system=="碩士班")
filter(W , day_train=="日")
filter(W , rpt>90)
filter(W , dep_name=="資訊管理系", school_system=="碩士班", day_train=="日")




