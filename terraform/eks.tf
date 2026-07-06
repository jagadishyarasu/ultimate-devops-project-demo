module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.33"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true   # required so pods can assume IAM roles

  cluster_endpoint_public_access  = true   # laptop is outside the VPC, needs public API access
  cluster_endpoint_private_access = true

  enable_cluster_creator_admin_permissions = true   # grants the applying IAM user kubectl access

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.large"]
      min_size       = 2
      max_size       = 3
      desired_size   = 2
    }
  }
}
