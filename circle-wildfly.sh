#!/bin/bash

# @author Tomas Kozel

export SINKIT_HOME=$PWD
mkdir wildfly && cd wildfly
git clone https://github.com/wildfly/wildfly.git
cd wildfly-${WILDFLY_VERSION} && mvn install -DskipTests
cp build/target/wildfly-${WILDFLY_VERSION} ${SINKIT_HOME}/
cp ${SINKIT_HOME}/standalone-ha.xml ${SINKIT_HOME}/wildfly-${WILDFLY_VERSION}/standalone/configuration/standalone-ha.xml
