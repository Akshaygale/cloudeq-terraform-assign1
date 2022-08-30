
module "aws_iam_users" {
  source         = "../../iam_user"
  demo_group     = var.group_name
  demo_usernames =  ["user100-Itachi", "user200-Obito", "user300-Naruto"] 
}


# module "my-bucket-module" { /* It create 1 to add */
#   source      = "../../s3_bucket"
#   bucket_name = var.bucket_name
# }

module "my_aws_instance" { /* It create 2 to add */
  source    = "../../ec2"
  ami1      = "ami-090fa75af13c156b4"
 
 
  demo_size = 10
}


