resource "google_project_iam_custom_role" "cloud-default" {
  role_id = "cloud_default_1"
  title   = "cloud-default"
  permissions = [
    "compute.disks.addResourcePolicies",
    "compute.disks.get",
    "compute.instances.get",
    "compute.resourcePolicies.create",
    "compute.resourcePolicies.get",
    "compute.resourcePolicies.use",
    "compute.zones.get",
    "serviceusage.services.list",
    "resourcemanager.projects.setIamPolicy"
  ]
}


resource "google_project_iam_custom_role" "storage-repository" {
  role_id = "storage_repository_1"
  title   = "storage-repository"
  permissions = [
    "storage.buckets.getIamPolicy",
    "storage.buckets.setIamPolicy",
    "storage.buckets.list",
    "storage.buckets.get",
    "storage.objects.create",
    "storage.objects.delete",
    "storage.objects.list",
    "storage.objects.get",
    "storage.hmacKeys.create",
    "storage.hmacKeys.list",
    "storage.hmacKeys.get",
    "resourcemanager.projects.get",
    "serviceusage.services.list"
  ]
}