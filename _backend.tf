terraform {
  backend "s3" {
    bucket = "devops-tf-backend-dc"
    key    = "eks/terraform.tfstate"
    region = "ap-northeast-2"
  }
}