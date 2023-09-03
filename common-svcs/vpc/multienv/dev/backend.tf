# Define backend s3 bucket
###########################
# Create a bucket in AWS and add the following code to the main.tf file
# encrypt: Whether the state file should be encrypted or not.
# dynamodb_table: The name of the DynamoDB table used for state locking. This helps prevent multiple people from making simultaneous changes.
# profile: The AWS CLI profile name for accessing AWS services. This is optional and would be used if you have multiple AWS profiles.
terraform {
    backend "s3" {
        acl = "bucket-owner-full-control"
        region = "us-west-2"
    }
}