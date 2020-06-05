variable "zone" {
    default = "us-central1-a"
}
variable "project" {
    default = "my-project"
  
}
variable "vm_count" {
    default = "0"
}
variable "name_prefix" {
    default = "testvm"
}
variable "machine_type" {
    default = "n1-standard-1"
}

variable "disk_type" {
  default = "pd-standard"
}

variable "disk_size" {
    default = "10"
}
variable "image" {
    default = "ubuntu-1804-lts"
}