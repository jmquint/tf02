variable "public_key_path" {
  description = "Path to the SSH public key to be used for authentication."
  default = "~/.ssh/terraform.pub"
}

variable "private_key" {
  description = "Path to the SSH private key to be used for authentication."
  default = "~/.ssh/terraform.pem"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "terraform"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-2"
}

# Ubuntu Precise 16.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-2 = "ami-996372fd"
    us-east-1 = "ami-1d4e7a66"
  }
}
