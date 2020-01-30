# Variables
variable "credentials_file_path" {
  description = "Service account json auth path"
  default = "otl-vpc-shared-f67897f60c2c.json"
}

variable "domain" {
  description = "The organization id for the associated services"
  default = "otxlab.net"
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  default = "015771-0202BE-D4A297"
}

variable "region" {
  description = "Default region for deploying resources"
  default = "us-east4"
}

variable "zone" {
  description = "Default zone for deploying resources"
  default = "us-east4-a"
}

variable "shared_vpc_id" {
  description = "Shared VPC project ID"
  default = "otl-vpc-shared"
}
