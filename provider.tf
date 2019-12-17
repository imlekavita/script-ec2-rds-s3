provider "aws" {

region     = "us-west-2"
  access_key = "AKIAUCIISMDNLSCG7M47"
  secret_key = "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"
 
}
provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
  region     = "${var.AWS_REGION}"
}
