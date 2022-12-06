# General VPC variables:
REGION			= "eu-de"
ZONE			= "eu-de-2"
VPC				= "ic4sap"
SECURITY_GROUP	= "ic4sap-securitygroup"
RESOURCE_GROUP  = "wes-automation"
SUBNET			= "ic4sap-ed2-subnet"
SSH_KEYS		= [ "r010-57bfc315-f9e5-46bf-bf61-d87a24a9ce7a" , "r010-3fcd9fe7-d4a7-41ce-8bb3-d96e936b2c7e" , "r010-7945f2b4-06f2-4276-8d8f-d40922a8686d" , "r010-771e15dd-8081-4cca-8844-445a40e6a3b3" , "r010-09325e15-15be-474e-9b3b-21827b260717" ]

# SAP Database VSI variables:
DB-HOSTNAME		= "ep12db"
DB-PROFILE		= "bx2-4x16"
DB-IMAGE		= "ibm-redhat-7-6-amd64-sap-applications-3"

# SAP APPs VSI variables:
APP-HOSTNAME    = "ep12app"
APP-PROFILE		= "bx2-4x16"
APP-IMAGE		= "ibm-redhat-7-6-amd64-sap-applications-3"
