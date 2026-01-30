module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "medhanshpendem+sandbox@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"

    SSOUserEmail     = "mpendam@autonomicsolutionsllc.com"
    SSOUserFirstName = "Medhansh"
    SSOUserLastName  = "Pendem"
  }

  account_tags = {
    Environment = "sandbox"
  }

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "Sandbox account via AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}