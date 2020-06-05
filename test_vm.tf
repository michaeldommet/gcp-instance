module "testvm" {
  source = "./modules/google-instances/"
  count_compute             = "${var.vm_count}"
  machine_type              = "${var.machine_type}"
  name_prefix               = "${var.name_prefix}"
  project_name              = "${var.project}"
  zone_name                 = "${var.zone}"
  compute_image = "${var.image}"
  disk_size  = "${var.disk_size}"
  disk_type  = "${var.disk_type}"
}
