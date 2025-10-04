# ---------------------------
# EKS Cluster Outputs
# ---------------------------
output "eks_cluster_id" {
  description = "The unique ID of the EKS cluster"
  value       = aws_eks_cluster.devopsshack.id
}

output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.devopsshack.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS Kubernetes API server"
  value       = aws_eks_cluster.devopsshack.endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "The certificate authority data for connecting to the cluster"
  value       = aws_eks_cluster.devopsshack.certificate_authority[0].data
}

# ---------------------------
# Node Group Outputs
# ---------------------------
output "eks_node_group_id" {
  description = "The unique ID of the EKS node group"
  value       = aws_eks_node_group.devopsshack.id
}

output "eks_node_group_name" {
  description = "The name of the EKS node group"
  value       = aws_eks_node_group.devopsshack.node_group_name
}

# ---------------------------
# Networking Outputs
# ---------------------------
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.devopsshack_vpc.id
}

output "subnet_ids" {
  description = "The IDs of the subnets associated with the EKS cluster"
  value       = aws_subnet.devopsshack_subnet[*].id
}
