#!/bin/bash

# @author Tomas Kozel

cd ~
wget http://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.zip
unzip wildfly-${WILDFLY_VERSION}.zip && cp standalone-ha.xml ${JBOSS_HOME}/standalone/configuration/standalone-ha.xml
