terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"  # Fixed missing closing quote
            version = "5.26.0"
        }
    }
}

provider "aws" {
    # Configuration options
}
