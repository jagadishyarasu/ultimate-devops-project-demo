variable "aws_region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "otel-demo-cluster"
}

variable "github_org_repo" {
  description = "e.g. your-username/ultimate-devops-project-demo"
  type        = string
}
