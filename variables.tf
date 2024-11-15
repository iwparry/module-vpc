variable "cidr_block" {
  description = "The CIDR block of our VPC resource"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "The name given to the VPC"
  default     = "vpc_module"
}

variable "subnets" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
  default = {
    subnet1 = {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "eu-west-1a"
    }
  }
}

variable 