# terraform-backend-s3
Terraform script to create backend on AWS S3 with state locking

This script can be used to create s3 bucket and dynamodb table for terraform state save and state locking remotly on s3.

1. Prerequisites:-
	1. Aws Account
	2. Configure AWS CLI (User key and Access key).

2. Steps:-
	1. Clone the repo
	2. Optional Step - create terraform.tfvars and define the varibale to avoid manually entering the vars.
		
			terraform.tfvars
			-----
			bucket_name   = "******************************"
			dynamodb_table = "*****************************"
			s3_encryption = true
			region = "us-east-1"
    
 3. Execute terraform commands
    1. terraform init
    2. terraform plan
    3. terraform apply
    
 4. After you will get backend section directly as ouput, which you can directly use for your other terraform scripts.
 
        Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

        Outputs:

        s3_backend_config_block = 
        backend "s3" {
          bucket = terraform-backend-state-s3-bucket
          key    = "terraform.tfstate"
          region = us-east-1
          dynamodb_table = terraform_backend_state_locking_db
          encrypt = true
        }
