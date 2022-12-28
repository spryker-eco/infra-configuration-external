resource "aws_s3_bucket" "testenv3-bucket" {
  bucket = "testenv3-bucket"

  tags = {
    Name        = "My bucket"
    Customer    = "customer1"
    Environment = "testenv3"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.testenv3-bucket.id
  acl    = "private"
}
