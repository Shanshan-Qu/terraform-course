terraform {
    backend "s3" {
        bucket = "terraform-state-squ"
        key = "terraform/demo-4"
        region = "ap-southeast-2"
    }
}