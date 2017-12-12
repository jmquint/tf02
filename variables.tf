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

# domain certificate loads from env variable TF_VAR_aws_arn
# following line should be below the description to set the aws_arn value
# but it is commented because the value will come from env variable so not anymore needed in the file
# default = "arn:aws:acm:eu-west-2:234753655476:certificate/d62d7e7c-7462-43bb-aa6d-a27c7b2e9b4f" 
variable "aws_arn" {
  description = "certificate arn url from aws certificate store - added for dev env"
  default = "arn:aws:acm:eu-west-2:234753655476:certificate/d62d7e7c-7462-43bb-aa6d-a27c7b2e9b4f" 
}
