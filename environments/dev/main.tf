# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Provider definitions
terraform {
  required_version = "~> 0.12.6"

  backend "gcs" {
    credentials = "otl-vpc-shared-f67897f60c2c.json"
    bucket = "otl-vpc-shared-tf-state"
    prefix = "projects"
  }
}

provider "google" {
  version = "~> 2.18"
  credentials = "${file(var.credentials_file_path)}"
  
  region  = var.region
  zone    = var.zone
}

# Data definitions
data "google_organization" "otxlab" {
  domain = var.domain
}

data "google_billing_account" "otxlab" {
  billing_account = var.billing_account
  open            = true
}

# First, create or grab the folder ID from the GUI
# Second, if POC project, copy sample code in poc.tf and adjust
# If regular LAB project, copy sample code in lab.tf and adjust
# Run terraform plan && terraform apply
