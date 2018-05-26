resource "google_storage_bucket" "bosh-blobstore" {
  name     = "${var.project_id}-bosh-blobstore"
  location = "${var.region}"
  storage_class = "regional"
  force_destroy = true
}

output "director__bucket_name" {
  value = "${google_storage_bucket.bosh-blobstore.name}"
}
