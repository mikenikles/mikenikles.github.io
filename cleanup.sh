#!/bin/sh

VERSION=$1
WORK_DIR=./repository/leodagdag/play2-morphia-plugin_2.10/$VERSION

# Change directory
#cd ./repository/leodagdag/play2-morphia-plugin_2.10/$VERSION

# Move files
find $WORK_DIR -type f -exec mv \{\} $WORK_DIR \;

# Append version number
mv $WORK_DIR/play2-morphia-plugin_2.10{,-$VERSION}.pom
mv $WORK_DIR/play2-morphia-plugin_2.10{,-$VERSION}.jar
mv $WORK_DIR/play2-morphia-plugin_2.10{,-$VERSION}-sources.jar
mv $WORK_DIR/play2-morphia-plugin_2.10{,-$VERSION}-javadoc.jar

# Remove empty folders
#find $WORK_DIR -type d -name "*" -exec rm -r {} \;
