# This is the only file to be maintained
# It contains values for current tenancy only
#
 
########################################
# STEP 0: Preparation ===>..... .....  #
########################################
#

########################################
# STEP 1: Backup ===> Old Site Backup. #
########################################
#


#########################################################################
# STEP 2: OCI Provisionning ===> OCI Infrastrcuture Resources Creation. #
#########################################################################


###########################################
# STEP 2.1 ===> New Compartment Creation. #
###########################################
#
# Root or Parent Compartement OCID
compartment_ocid              = "ocid1.compartment.oc1..aaaaaaaa6gc....."
compartment_name              = "JOOMLA-MOve-Compartment"
compartment_description       = "Demo Child Compartment dedicated to Joomla Site Migration"
compartment_delete_on_destroy = true

################################################
# STEP 2.2 ===> Networking Resources Creation. #
################################################

# Core Network not including Load Balancer
#
# Exisiting Subnet & NSG OCIDs(DemoVCN)
subnet_ocid               = "ocid1.subnet.oc1......"
network_security_group_id = "ocid1.networksecuritygroup.oc1.us...."
#
# New VCN & Subnet CIDR Blocks
vcn_cidr_block    = "10.0.0.0/16"
subnet_cidr_block = "10.0.1.0/24"


#######################################################################
# STEP 2.3 ===> Create 1 or 2+ (if quota limit allows) Servers./VM(s) #
#######################################################################
#
# Number of Servers (Virtual Machines)
sever_count = 1
#
# Avaialability Domain and fault domain number
availability_domain = "X-AD-1"
fault_domain_number = 0
#
# "ocid1.image.oc1.us-sanjose-1.aaaaaaaanypljfcdl4wj7wfqcfradpzgzazdbvpntl36zk3bcktoqyzcf4ma"
image_ocid = "ocid1.image.oc1.us-sanjose-1.aaaaaaaac..."
#
# Display Name Prefix and host/dns name prefix
display_name_prefix = "1 Click JOOMLA Site"
host_name_prefix    = "oneclic"
#
# Public ssh key path
ssh_public_key = "....../.ssh/cloudshellkey.pub"
#
# Private ssh key path
ssh_private_key = "...../.ssh/cloudshellkey"
#
# Assigned Public IP
assign_public_ipaddress = true


#############################################################################################
# STEP 2.4 ===> Flexible Load Balalnce and points to 2+ Servers/VM (Quota Allowed) Install. #
#############################################################################################
# 
# Flag to configure a felxible load balancer and parameters values 
is_loadbalancer_installed = false
lb_min_bandwith_in_mgps   = 10
lb_max_bandwith_in_mgps   = 10


#############################################################################################
# STEP 2.4: ACCESS TO THE VM(s) ===> SSH to and check the Server(s)/VM(s) characteristques. #
#############################################################################################
#
# Flag to turn on ssh access and configuraiton check of the newly created servers.
is_testing_required = false


#######################################################
# STEP 3 ANSIBLE PLAYBOOK ==> Apps creation and test. #
#######################################################


#################################################################
# STEP 3.1: LAMP INSTALL ===> Install Appache Maria DB and PHP. #
#################################################################
#
# Flag to configure the full LAMP stacl (Appache web server, MySQL Maria DB and a PHP all latest version)
is_website_installed = false


#########################################################################
# STEP 3.2 LAMP TESTING ===> Test Appache, Maria DB and PHP All-In-One. #
#########################################################################
#
# Flag to configure an appache web server and a demo website 
is_website_installed = false


#############################################################################
# STEP 3.3 DATA MIGRATION ===> Import the exported Data in the backup phase. #
#############################################################################
#
# Download from the the zip file that contains the exported database (OCI OS ParaV-URL)


########################################################################
# STEP 3.4: JOMMLA INSTALLATION ===> Install latest version of Joomla. #
########################################################################
#
# Install the latest version of JOOMLA (4+) from the official Joomla.org site.


##########################################################################################
# STEP 3.5: JOMMLA FILES & OTHER ===> Copy all exported Joomla files and other resoures. #
##########################################################################################
#
# Copy to the new Joomla directory all exported files (Medias, Plug-in and module).
# Install the latest version of all previousely use templates and modules


#########################################################################################
# STEP 3.6: UPDATE CONFIGURATION.PHP ===> Update the new Joomla configuration.php file. #
#########################################################################################
#
# Copy to the new Joomla directory all exported files (Medias, Plug-in and module).
# Install the latest version of all previousely use templates and modules


##############################################################################################
# STEP 3.7: TEST THE NEW WEB SITE ===> Verify the web is is accessible and fully functional. #
##############################################################################################
#
# Copy to the new Joomla directory all exported files (Medias, Plug-in and module).
# Install the latest version of all previousely use templates and modules


################################################
# STEP 4 ===> WHEN DONE DESTROY ALL RESSOURCES #
################################################
