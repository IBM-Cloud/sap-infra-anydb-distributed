##########################################################
# General VPC variables:
##########################################################

REGION = ""
# The cloud region where to deploy the solution. Supported regions: https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones#zones-vpc
# Example: REGION = "eu-de"

ZONE = ""
# Availability zone for the VSI, in the REGION. Supported zones: https://cloud.ibm.com/docs/containers?topic=containers-regions-and-zones#zones-vpc
# Example: ZONE = "eu-de-2"

VPC = ""
# The name of an EXISTING VPC. Must be in the same region as the VSI to be deployed. The list of VPCs is available here: https://cloud.ibm.com/vpc-ext/network/vpcs.
# Example: VPC = "ic4sap"

SECURITY_GROUP = ""
# The name of an EXISTING Security group for the same VPC. It can be found at the end of the Bastion Server deployment log, in "Outputs", before "Command finished successfully" message.
# The list of available Security Groups: https://cloud.ibm.com/vpc-ext/network/securityGroups
# Example: SECURITY_GROUP = "ic4sap-securitygroup" 

RESOURCE_GROUP = ""
# The name of an EXISTING Resource Group, previously created by the user. The list of available Resource Groups: https://cloud.ibm.com/account/resource-groups
# Example: RESOURCE_GROUP = "wes-automation"

SUBNET = ""
# The name of an EXISTING Subnet, in the same VPC and ZONE where the VSI will be created. The list of Subnets is available here: https://cloud.ibm.com/vpc-ext/network/subnets. 
# Example: SUBNET = "ic4sap-subnet" 

SSH_KEYS = [ "" ]
# List of SSH Keys UUIDs that are allowed to connect via SSH, as root, to the VSI. Can contain one or more IDs. The SSH Keys should be created for the same region as the VSIs. The list of available SSH Keys UUIDs: https://cloud.ibm.com/vpc-ext/compute/sshKeys
# Example: SSH_KEYS = ["r010-8f72b994-c17f-4500-af8f-d05680374t3c", "r011-8f72v884-c17f-4500-af8f-d05900374t3c"]

ID_RSA_FILE_PATH = "ansible/id_rsa"
# The path to an existing id_rsa private key file, with 0600 permissions. The private key must be in OpenSSH format.
# This private key is used only during the provisioning and it is recommended to be changed after the SAP deployment.
# It must contain the relative or absoute path from your Bastion.
# Example:  "/root/.ssh/id_rsa".

##########################################################
# Activity Tracker variables:
##########################################################

ATR_NAME = ""
# The name of the EXISTENT Activity Tracker instance, in the same region chosen for SAP system deployment.
# Example: ATR_NAME="Activity-Tracker-SAP-eu-de"

##########################################################
# DB VSI variables:
##########################################################

DB_HOSTNAME = ""
# The Hostname for the DB VSI. The hostname should be up to 13 characters, as required by SAP
# Example: DB_HOSTNAME = "ic4sapdb2"

DB_PROFILE = "bx2-4x16"
# The DB VSI profile. Supported profiles for DB VSI: bx2-4x16. The list of available profiles: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles&interface=ui

DB_IMAGE = "ibm-redhat-8-6-amd64-sap-applications-4"
# OS image for DB VSI. Supported OS images for DB VSIs: ibm-redhat-8-6-amd64-sap-applications-4, ibm-redhat-8-4-amd64-sap-applications-7, ibm-sles-15-4-amd64-sap-applications-6, ibm-sles-15-3-amd64-sap-applications-9.
# The list of available VPC Operating Systems supported by SAP: SAP note '2927211 - SAP Applications on IBM Virtual Private Cloud (VPC) Infrastructure environment' https://launchpad.support.sap.com/#/notes/2927211; The list of all available OS images: https://cloud.ibm.com/docs/vpc?topic=vpc-about-images
# Example: DB_IMAGE = "ibm-redhat-8-6-amd64-sap-applications-4" 

##########################################################
# SAP APP VSI variables:
##########################################################

APP_HOSTNAME = ""
# The Hostname for the SAP APP VSI. The hostname should be up to 13 characters, as required by SAP
# Example: HOSTNAME = "ic4sap"

APP_PROFILE = "bx2-4x16"
# The APP VSI profile. Supported profiles: bx2-4x16. The list of available profiles: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles&interface=ui

APP_IMAGE = "ibm-redhat-8-6-amd64-sap-applications-4"
# OS image for SAP APP VSI. Supported OS images for DB VSIs: ibm-redhat-8-6-amd64-sap-applications-4, ibm-redhat-8-4-amd64-sap-applications-7, ibm-sles-15-4-amd64-sap-applications-6, ibm-sles-15-3-amd64-sap-applications-9.
# The list of available VPC Operating Systems supported by SAP: SAP note '2927211 - SAP Applications on IBM Virtual Private Cloud (VPC) Infrastructure environment' https://launchpad.support.sap.com/#/notes/2927211; The list of all available OS images: https://cloud.ibm.com/docs/vpc?topic=vpc-about-images
# Example: APP_IMAGE = "ibm-redhat-8-6-amd64-sap-applications-4" 
