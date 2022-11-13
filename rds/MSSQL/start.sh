#!/bin/bash
# MSSQL
export RDS_STACK_NAME=MyRDSStack'
export ENGINE=sqlserver-se'
export DBINSTANCECLASS=db.t3.xlarge'
export SQLSERVER_USERNAME=appz'
export SQLSERVER_PASSWORD='$dbpass
export SQLSERVER_DBPORT=1433'
export RDS_CIDR=0.0.0.0/0'
export RDS_SECURITYGROUPID=yoursgid'
ansible-playbook play.yaml