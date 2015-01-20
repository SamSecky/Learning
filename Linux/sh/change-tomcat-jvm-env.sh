#!/bin/sh
if [ $# != 1 ]
then
   echo -e "Please input environment value: dev/uat."
   exit -1
fi

if [[ $1 != "dev"  && $1 != "uat" ]]
then
   echo "Wrong environment value."
   exit -1
fi

tomcatbase="/home/rcastdev/software/apache-tomcat-7.0.37"

rm -rf ${tomcatbase}/logs/*
rm -rf ${tomcatbase}/webapps/raptorweb

cd ${tomcatbase}/bin
if [ $1 = "dev" ]
then
   cp catalina.sh.dev catalina.sh
fi

if [ $1 = "uat" ]
then
   cp catalina.sh.uat catalina.sh
fi

nohup ./startup.sh
tail -f ../logs/catalina.out
