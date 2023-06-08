output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

output "public_subnet_ids" {
  value = aws_subnet.eks_public_subnets[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.eks_private_subnets[*].id
}

output "eks_sg_id" {
  value = aws_security_group.eks_cluster_sg.id
}
