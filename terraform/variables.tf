variable "project_name" {
  default = "expense"
}
variable "environment" {
  default = "dev"
}
variable "comman_tags" {
  type = map
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
    component = "frontend"
  }
}

variable "zone_name" {
  default = "goadd.fun"
}

variable "app_Version" {
  
}