# Create Remote Backend

## We use existing S3 bucket to configure remote backend.

For that you should have already created a bucket, so don't create a bucket with terraform, create manually and use that bucket name in tf file. 

### Why not to create Bucket using Terraform

- If you create bucket with terraform, that bucket statefile stores in your local machine. 
- So it still has your credential information, and its not good way to manage. so create manaully.


