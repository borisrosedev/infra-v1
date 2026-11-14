variable "subnet_id" {
  type        = string
  description = "Subnet ID of the webserver"
}

variable "has_public_ip" {
  type        = bool
  default     = false // security by default
  description = "If instance is public or not"
}

variable "sg_id" {
  type        = string
  description = "Security Group of the instance"
}

variable "instance_public_key" {
  type        = string
  description = "The public key of the instance or the path to it"
}

variable "instance_public_key_name" {
  type        = string
  description = "The name of the public key"
}

variable "instance_name" {
  type        = string
  description = "Instance name"
}
