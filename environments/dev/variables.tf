variable "ami_id" {
  description = "ami id of the ec2 instance"
}

variable "instance_type" {
    description = "allowed instance type for the ec2 instance"
}

variable "environment" {
  description = "environment of the infra "
}

variable "sg_webaccess"{
  description = "security group for ssh and http"
}

variable "ssh_key_path" {
  description = "path to the ssh key"
}