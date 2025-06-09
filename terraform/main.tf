provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "chatbot-cluster"
  cluster_version = "1.27"
  subnets         = ["subnet-0591af91a1940f7f5", "subnet-06d095cafadb8b4e4", "subnet-03ff2ec6907798951"] # replace with your subnet ids
  vpc_id          = "vpc-05a5f522b5f9012f3"                  # replace with your VPC ID
  node_groups = {
    chatbot_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t2.medium"
    }
  }
}

output "kubeconfig" {
  value = module.eks.kubeconfig
  sensitive = true
}

