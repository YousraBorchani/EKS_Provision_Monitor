module "eks-grafana-prometheus" {
  source  = "DNXLabs/eks-grafana-prometheus/aws"
  version = "0.2.0"
  enabled = true
}

