terraform {
  required_version = ">= 1.0, < 1.8.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.13"
    }
  }
}

data "aws_eks_cluster" "eks_test_cluster" {
  name = "eksworkshop-eksctl"
}

data "aws_eks_cluster_auth" "eks_test_cluster_auth" {
  name = "eksworkshop-eksctl"
}

provider "kubernetes" {
  token                  = data.aws_eks_cluster_auth.eks_test_cluster_auth.token
  host                   = data.aws_eks_cluster.eks_test_cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks_test_cluster.certificate_authority[0].data)
}
