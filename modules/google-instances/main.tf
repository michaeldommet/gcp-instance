# modules/google-instances/main.tf
#
# Creates Google Compute Engine instances and an unmanaged instance group.
# Apr 2020

// Uncomment for Staic IP address
//resource "google_compute_address" "static" {
//  count = "${var.count_compute}"
//  name  = "${var.name_prefix}-${count.index}"
 
//}
resource "google_compute_instance" "default" {
  count                     = "${var.count_compute}"
  machine_type              = "${var.machine_type}"
  name                      = "${var.name_prefix}${count.index + 1}"
  project                   = "${var.project_name}"
  zone                      = "${var.zone_name}"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "${var.compute_image}"
      size  = "${var.disk_size}"
      type  = "${var.disk_type}"
    }
  }

  // Uncomment for Local SSD disk
 // scratch_disk {
 //   interface = "SCSI"
 // }

  network_interface {
    network = "default"
    access_config {}
// Uncoment below for static IP address 
//    access_config  {
//      nat_ip = "${google_compute_address.static.*.address[count.index]}"
//    }
  }
}