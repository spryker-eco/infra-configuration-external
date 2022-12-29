resource "aws_s3_bucket" "testenv4-bucket" {
  bucket = "testenv4-bucket"

  tags = {
    Name        = "My bucket"
    Customer    = "customer1"
    Environment = "testenv4"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.testenv4-bucket.id
  acl    = "private"
}
