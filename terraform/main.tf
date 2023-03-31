module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "learn-aft@pittan.co.jp"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "kazuto.kusama@pittan.co.jp"
    SSOUserFirstName          = "Kazuto"
    SSOUserLastName           = "Kusama"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "account1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "account1@pittan.co.jp"
    AccountName               = "account1"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "kazuto.kusama@pittan.co.jp"
    SSOUserFirstName          = "Kazuto"
    SSOUserLastName           = "Kusama"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}