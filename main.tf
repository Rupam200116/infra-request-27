provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "te" {
  ami           = "ami-0c92e4b557f464536"
  instance_type = "t2.micro"
  tags = {
    Project     = "te"
    ManagedBy   = "terraform"
  }
}

output "public_ip" {
  value = aws_instance.te.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.te.id
}

output "endpoint" {
  value = aws_s3_bucket.te.website_endpoint
}