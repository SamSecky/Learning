#!/bin/sh
WORKDIR='pwd'
MAINCLASS="com.app.Test"
lib="."
for jar in $WORKDIR/*.jar
do
lib=$lib:$jar
done

java -classpath $lib $MAINCLASS

##--- another method need to have a try
#java -cp $(echo lib/*.jar | tr ' ' ':')