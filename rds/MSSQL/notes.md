# https://www.ecloudcontrol.com/how-to-create-rds-mssql-with-cloudformation-and-ansible/

# HOW TO CREATE RDS-MSSQL WITH CLOUDFORMATION AND ANSIBLE

INTRODUCTION

Amazon Relational Database Service (Amazon RDS) is a relational database service that makes it easier to set up, operate, manage and scale a relational database in the AWS Cloud. This article will help you to create RDS-MSSQL in AWS Cloud with CloudFormation and Ansible.

GET TO KNOW THE RESOURCES AND TOOLS USED

CLOUDFORMATION

AWS CloudFormation is a simple way to create and manage a collection of AWS resources by provisioning and predictably updating them. For instance, we usually do manual work in the AWS console to create or delete resources

What if,

               –    We need to create the same resource in another region

               –    In another AWS Account 

               –    And everything got messed up or deleted accidentally.

We are going to make a declarative way of defining the infrastructure. CloudFormation uses the template as input which can be a YAML or JSON file.

The building blocks of the CloudFormation template are,

Resources: Your AWS resources declared in the template (mandatory) 
Parameters: The dynamic input for your template
Mappings: The static variable for your template
Outputs: Reference to what has been created
Conditionals: List of condition to perform resource creation
ANSIBLE

Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling infrastructure as code. We will run a cloud formation template using Ansible’s CloudFormation module instead of AWS CLI.

RDS – RELATIONAL DATABASE SERVICE

It is a distributed relational database service by Amazon Web Services. It is a web service running “in the cloud” designed to simplify the setup, operation, and scaling of a relational database for use. 

PREREQUISITES

One Ubuntu 18.04 server with ansible server setup.
An AWS account access (programmatic access) with required privileges.
PROCEDURE

Step 1 – Create CloudFormation template

A template is a declaration of the AWS resources that make up a stack. The template is stored as a text file whose format complies with the JavaScript Object Notation (JSON) or YAML standard. A sample template named cloudformation.j2 can be found below.

Inside cloudformation.yaml.j2, define dynamic resource names as parameters.  The resource section with reference to the parameters will read values from the environment.