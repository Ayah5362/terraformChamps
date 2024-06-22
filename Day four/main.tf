resource "aws_iam_user" "ahmed" {
  name = "Ahmed"
}
resource "aws_iam_user_policy_attachment" "attach_ec2_admin_policy" {
  user       = aws_iam_user.ahmed.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

// create s3 bucket 
resource "aws_s3_bucket" "users" {
  bucket = "aya-bucket-1"

  tags = {
    Environment = "terraformChamps"
    owner       = "aya"
  }
}

resource "aws_iam_user" "mahmoud" {
  name = "Mahmoud"
}


resource "aws_iam_policy" "mahmoud_s3_policy" {
  name   = "mahmoud_s3_policy"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = ["s3:PutObject", "s3:GetObject"],
        Resource = "arn:aws:s3:::aya-bucket-1/*",
        Condition = {
          IpAddress = {
            "aws:SourceIp" = "public ip"
          }
        }
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "mahmoud_policy_attachment" {
  user       = aws_iam_user.mahmoud-user.name
  policy_arn = aws_iam_policy.mahmoud_s3_policy.arn
}

resource "aws_iam_user" "mostafa" {
  name = "mostafa"
}

resource "aws_iam_policy" "s3_get_policy" {
  name   = "S3GetPolicy"
    
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "s3:GetObject",
        Resource = "arn:aws:s3:::aya-bucket-1/*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "mostafa_policy_attachment" {
  user       = aws_iam_user.mostafa.name
  policy_arn = aws_iam_policy.s3_get_policy.arn
}



   
