#!/bin/bash

mvn install -Dmaven.javadoc.skip=true -Dmaven.test.skip=true

RED5_DIR=/Users/mekya/softwares/red5-server

RED5_LIB_DIR=$RED5_DIR/lib

RED5_JAR=/Users/mekya/git/red5-server-common/target/red5-server-common-1.0.8-RELEASE.jar

SRC_CONF_DIR=/Users/mekya/git/red5-server/src/main/server/conf/

#copy red5 jar from target dir to red5 dir
cp  $RED5_JAR  $RED5_LIB_DIR/

cp -rf $SRC_CONF_DIR   $RED5_DIR/conf

#go to red5 dir
cd $RED5_DIR

#shutdown red5 
./red5-shutdown.sh


#start red5
./red5.sh
