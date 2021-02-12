// Note: best to set controller_ip, username, password for Aviatrix Controller
// as environment variables.
// example: export TF_VAR_controller_ip=YOUR.IP
# Create an avx.env file like this and source it..
    # Aviatrix AWS Controller Vars
    # export TF_VAR_controller_ip=3.155.6.52
    # export TF_VAR_username=devops
    # export TF_VAR_password=#Aviatrix1234

// Modify below as needed:
region                   = "us-east-1"
transit_cidr             = "10.0.0.0/20"
account                  = "TM-AWS" # Replace with your AWS Access Account in Controller
// Add an account variable for each spoke for different accts
spoke1_cidr              = "10.1.0.0/20"
spoke2_cidr              = "10.2.0.0/20"
spoke3_cidr              = "10.3.0.0/20"
