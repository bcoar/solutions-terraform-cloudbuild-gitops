data "google_project" "otl-vpc-shared" {
  project_id = var.shared_vpc_id
}

# One block per project definition
# Copy sample code below and fill in the appropriate values
#module "project-factory" {
#  source  = "terraform-google-modules/project-factory/google"
#  version = "~> 6.0"
#
#  credentials_path    = "${var.credentials_file_path}"
#  name                = "otl-migrations-test"
#  project_id          = "otl-migrations-test"
#  org_id              = data.google_organization.otxlab.org_id
#  folder_id           = ""
#  billing_account     = var.billing_account
#  shared_vpc          = data.google_project.otl-vpc-shared.number
#  group_name          = "r_gcp_team_name@otxlab.net"
#  group_role          = "roles/editor"
#  default_service_account = "keep"
#
#  shared_vpc_subnets = [
#    "projects/otl-vpc-shared/regions/us-east4/subnetworks/otl-us-east4-data-1",
#    "projects/otl-vpc-shared/regions/us-east4/subnetworks/otl-us-east4-data-2",
#    "projects/otl-vpc-shared/regions/us-east4/subnetworks/otl-us-east4-data-3",
#  ]
#
#  labels = {
#    "bu" = "business_unit"
#    "cost_center" = "us123456789"
#    "requestor" = "ot_user_id"
#    "team" = "team_name"
#    "budget" = "100"
#  }
#}

# DO NOT EDIT ABOVE THIS LINE

# Project Definitions for Lab

