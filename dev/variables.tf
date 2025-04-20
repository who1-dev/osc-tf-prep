variable "stage" {
  type        = string
  description = "Deployment stage, e.g. dev, test, prod"
  default     = "dev"
}
variable "namespace" {
  type        = string
  description = "Project name"
}

variable "name" {
  type        = string
  description = "No idea what name is for"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones to use"
}


variable "ipv4_primary_cidr_block" {
  type        = string
  description = <<-EOT
    The primary IPv4 CIDR block for the VPC.
    Either `ipv4_primary_cidr_block` or `ipv4_primary_cidr_block_association` must be set, but not both.
    EOT
  default     = "10.0.0.0/16"
}

variable "container_port" {
  type        = number
  description = "The port the application listens on"
}

variable "service_desired_count" {
  type        = number
  description = "The desired number of tasks per service"
}