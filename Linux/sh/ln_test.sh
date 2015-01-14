#!/bin/bash
LINK_FOLDER=lnk_test
if [[ -h $LINK_FOLDER ]]
then
   echo -e "It exits. Error.\n"
   exit -1
fi
DAY=`date +"%Y-%m-%d %H:%M"`
ln -s  /home/lq00863/learning/test_ln_source $LINK_FOLDER
if [ $? != 0 ]
then 
  message="Error.\n"
  echo -e $message
  exit -1
fi
cd $LINK_FOLDER
if [[ -f README ]]
then
 rm -f README
fi
echo "Link created. Create time is $DAY.">README
