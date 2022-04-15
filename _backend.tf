// terraform {
//   backend "s3" {
//     bucket = "devops-tfbackend-dc"
//     key    = "eks/terraform.tfstate"
//     region = "ap-northeast-2"
//   }
//   required_providers {
//     kubernetes = {
//       source  = "hashicorp/kubernetes"
//       version = ">= 2.0"
//     }
//   }
// }
