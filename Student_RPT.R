getwd()
#read.csv()�פJ��� header=T����csv�Ĥ@�C�]�t�ܼƦW�١Asep=","���ܸ�ƥH�r�����j�C
a=read.csv("C:/Users/Plume/Documents/Student_RPT.csv", header=T, sep=",")
str(a)
#names()���˵��ܼƦW��
names(a)
dim(a)
names(a)<-c("year","set","school_cate","school_num","school_name","day_train","school_system","dep_name","rpt","dep_enro","dep_web","remarks")
names(a)
head(a)
library(ggplot2)
library(dplyr)
library(nycflights13)
#�̾Ǧ~��
by_year <- group_by(a, year)
View(by_year)
year_103<-filter(by_year,school_num==26 ,year == 104, school_system=="�Ӥh�Z")
View(year_103)
#�̤��p�߸s��
by_set <- group_by(a, set)
View(by_set)
#�̾Ǩ�
by_cate <- group_by(a, school_cate)
View(by_cate)
school_26<-filter(by_cate, school_num==26 ,year == 104, school_system=="�Ӥh�Z")
View(school_26)
