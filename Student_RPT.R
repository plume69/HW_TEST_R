getwd()
#read.csv()匯入資料 header=T表示csv第一列包含變數名稱，sep=","表示資料以逗號分隔。
a=read.csv("C:/Users/Plume/Documents/Student_RPT.csv", header=T, sep=",")
str(a)
#names()來檢視變數名稱
names(a)
dim(a)
names(a)<-c("year","set","school_cate","school_num","school_name","day_train","school_system","dep_name","rpt","dep_enro","dep_web","remarks")
names(a)
head(a)
library(ggplot2)
library(dplyr)
library(nycflights13)
#依學年度
by_year <- group_by(a, year)
View(by_year)
year_103<-filter(by_year,school_num==26 ,year == 104, school_system=="碩士班")
View(year_103)
#依公私立群組
by_set <- group_by(a, set)
View(by_set)
#依學制
by_cate <- group_by(a, school_cate)
View(by_cate)
school_26<-filter(by_cate, school_num==26 ,year == 104, school_system=="碩士班")
View(school_26)

