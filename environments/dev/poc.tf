# All POC projects go in this folder
data "google_folder" "poc" {
  folder = "folders/1024879238815"
}

# One block per project definition
#module "project-factory" {
#  source  = "terraform-google-modules/project-factory/google"
#  version = "~> 6.0"
#
#  credentials_path    = "${var.credentials_file_path}"
#  name                = "otl-poc-test"
#  project_id          = "otl-poc-test"
#  org_id              = data.google_organization.otxlab.org_id
#  folder_id           = data.google_folder.poc.id
#  billing_account     = var.billing_account
#  group_name          = "r_gcp_group_name@otxlab.net"
#  group_role          = "roles/editor"
#  auto_create_network = "true"
#  default_service_account = "keep"
#  labels = {
#    "bu" = "business_unit"
#    "cost_center" = "us123456789"
#    "requestor" = "ot_user_id"
#    "team" = "team_name"
#    "budget" = "100"
#  }	
#}



