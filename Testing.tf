provider "aws"{
    region = "us-east-1"

    verson = "~> 11.1"
}
resource "aws_s3_bucket" "azdo"{
    bucket = "myazbucket3"
    acl = "private"

}
