terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.30.0"
        }
    }
}

provider "aws" {
    # Configuration options
}

resource "aws_s3_bucket" "default" {

}
resource "aws_s3_bucket" "object" {
    bucket = resource.aws_s3_bucket.default
    key = "myfile.txt"
    source = "myfile.txt"
}