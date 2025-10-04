# ---------------------------
# SSH Key Variable
# ---------------------------
variable "ssh_key_name" {
  description = "Name of the existing EC2 SSH key pair to associate with the EKS worker nodes for remote access."
  type        = string
  default     = "DevOps-Shack"
}
