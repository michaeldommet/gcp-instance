variable "zone_name" {
  default = "us-central1-a"
}

variable "project_name" {
  default = ""
  
}
variable "count_compute" {
  default = "1"
}
variable "name_prefix" {
  default = ""
}
variable "machine_type" {
  default= ""
}

variable "disk_type" {
  default = "pd-standard"
}

variable "disk_size" {
  default = ""
}
variable "compute_image" {
  default = ""
}
