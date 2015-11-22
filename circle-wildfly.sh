#!/bin/bash

# @author Tomas Kozel

export SINKIT_HOME=$PWD
git clone https://github.com/wildfly/wildfly.git
cd wildfly && mvn install -DskipTests
cp build/target/wildfly-${WILDFLY_VERSION} ${SINKIT_HOME}/
cp ${SINKIT_HOME}/standalone-ha.xml ${SINKIT_HOME}/wildfly-${WILDFLY_VERSION}/standalone/configuration/standalone-ha.xml
