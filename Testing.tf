provider "aws"{
    region = "us-east-1"
    access_key = "AKIAR54SMTXBD6WWWSG6"
    secret_key = "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"
    version = "~> 1.11"
}
resource "aws_s3_bucket" "azdo"{
    bucket = "myazbucket3"
    acl = "private"

}
