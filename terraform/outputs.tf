output "cluster_name" {
  value = module.eks.cluster_name
}
output "ecr_repo_urls" {
  value = { for k, v in aws_ecr_repository.svc : k => v.repository_url }
}
output "github_actions_role_arn" {
  value = aws_iam_role.github_actions.arn
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "alb_controller_role_arn" {
  value = aws_iam_role.alb_controller.arn
}
