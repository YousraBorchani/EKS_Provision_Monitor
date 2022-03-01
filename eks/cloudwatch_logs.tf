module "cloudwatch_logs" {
  source  = "DNXLabs/eks-cloudwatch-logs/aws"

  enabled = true
  cluster_name                     = module.eks.cluster_id
  cluster_identity_oidc_issuer     = module.eks.cluster_oidc_issuer_url
  cluster_identity_oidc_issuer_arn = module.eks.oidc_provider_arn
  worker_iam_role_name             = module.eks.worker_iam_role_name
  region                           = var.region
}