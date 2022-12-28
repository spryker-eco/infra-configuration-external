resource "aws_s3_bucket" "testenv-bucket" {
  bucket = "testenv-bucket"

  tags = {
    Name        = "My bucket"
    Customer    = "customer1"
    Environment = "testenv1"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.testenv-bucket.id
  acl    = "private"
}
