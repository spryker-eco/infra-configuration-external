
resource "aws_iam_user" "lb" {
  name = "intersport-test"
  path = "/system/"
}
