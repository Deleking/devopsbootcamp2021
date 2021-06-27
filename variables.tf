variable "ssh_key" {
  description = "This is used for logging in"
  default     = "june2021"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tag_name" {
  default = "Real_Web_Server"
}

variable "bucket" {
  default = "adelerie1-tutorial-1"
}

variable "key" {
  default = "training/june2021/day3-statefile"
}  