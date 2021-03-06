#!/usr/bin/env bash

install(){
    # stacks
    if [ ! -d "/var/lib/ambari-server/resources/stacks/HDP/2.6/services/ELASTICSEARCH" ];then
    echo "创建 /var/lib/ambari-server/resources/stacks/HDP/2.6/services/ELASTICSEARCH"
    mkdir -p /var/lib/ambari-server/resources/stacks/HDP/2.6/services/ELASTICSEARCH
    fi
    cp -R conf/* /var/lib/ambari-server/resources/stacks/HDP/2.6/services/ELASTICSEARCH/

    # common-services
    #if [ ! -d "/var/lib/ambari-server/resources/common-services/ELASTICSEARCH/6.3.0" ];then
    #echo "创建 /var/lib/ambari-server/resources/common-services/ELASTICSEARCH/6.3.0"
    ##mkdir -p /var/lib/ambari-server/resources/common-services/ELASTICSEARCH/6.3.0
    #fi
    #cp -R common-services/* /var/lib/ambari-server/resources/common-services/ELASTICSEARCH/6.3.0
}

checkUser(){
    if [ `whoami` != "root" ];then
        echo "only root can run me"
        exit 1
    else
        install
    fi
}

checkUser
