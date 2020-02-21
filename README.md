# AWS-Project-
Full Project for AWS to create VM(EC2), Install Nginx,reverse proxy,Harden the code 


You can check the Link of documentation on my blog :
https://osamaoracle.com/2020/02/21/complete-project-built-on-amazon-aws/


•	The CloudFormation Script, makes use of several scripts and configuration files. Their links and description are as follows:-
    o Echo Request Application:- Used to signal CloudFormation upon successful instance creation
    
    
•	Logging
    oCloudWatch Agent: Deploys CloudWatch agent on the system for centralized logging
    oCloudFormation Helper Script: Used to signal CloudFormation upon successful instance creation
    oCloudWatch Agent Configuration: Instance specific configuration for the CloudWatch agent. Contains instructions on the centralized logging setup
    
    
•	Hardening:
    oFilter configuration file: This is the required configuration file for correct parsing of application logs
    oFail2ban configuration file: Configuration file for detecting and thwarting cyber threats in their tracks
    oUser creation: This script is used to create a restricted user

For details on deployment architecture and configuration, please refer to the following documents:
    •Documentation : Contains overview on deployment architecture and high-level OS hardening & logging configurations.
    •CloudFormation Script: Contains details on architecture and OS hardening as well as logging configurations


