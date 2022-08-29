# To add users in a group
resource "aws_iam_group_membership" "akshay_demo_group_membership" {
  name = "akshay-tf-testing-group-membership"
  users = [for i in aws_iam_user.demo_users : i.name]
  group = aws_iam_group.akshay_demo_group.name
}


# To create a group
resource "aws_iam_group" "akshay_demo_group" {
  name = var.demo_group
}


# To create a IAM user
resource "aws_iam_user" "demo_users" {
  count = length(var.demo_usernames)
  name  = var.demo_usernames[count.index]

  tags = {
    Name = "akshay-demo-user"
    
  }
}

