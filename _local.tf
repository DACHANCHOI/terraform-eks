locals {
  region = var.region
  tags   = merge(var.tags, { Owner = var.owner, Environment = var.env })

  vpc_id             = "vpc-0f9d114f4c90aa143"
  private_subnet_ids = ["subnet-08103984b3ead6ce4", "subnet-0770fd397c68db3a5"]
  azs                = ["ap-northeast-2a", "ap-northeast-2c"]
  default_sg_id      = "sg-00b0d77c2cd7ee62c"

  name        = format("%s", var.name)
  worker_name = format("worker")
  role_name   = format("%s-eks-worker-role", var.name)
  policy_name = format("%s-eks-worker-policy", var.name)

  cluster_version                 = var.cluster_version
  cluster_endpoint_private_access = var.cluster_endpoint_private_access
  cluster_endpoint_public_access  = var.cluster_endpoint_public_access

  worker_groups_launch_template = [
    {
      name                 = local.worker_name
      instance_type        = var.worker_instance_type
      asg_desired_capacity = var.worker_instance_count
      iam_role_id          = module.iam.iam_role_name
      key_name             = var.worker_key_name
      tags = [{
        key                 = "ExtraTag"
        value               = "TagValue"
        propagate_at_launch = true
      }]
    }
  ]

  sg_name        = format("%s-eks-worker-sg", var.name)
  sg_description = format("%s-eks-worker-sg", var.name)

  egress_rules = ["all-all"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 30800
      to_port     = 30800
      protocol    = "tcp"
      description = "argocd nodeport"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  trusted_role_services   = var.trusted_role_services
  custom_role_policy_arns = concat(var.custom_role_policy_arns, [aws_iam_policy.this.arn])
}