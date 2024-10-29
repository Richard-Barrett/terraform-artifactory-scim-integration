terraform {
  required_version = ">= 1.5.6"
  required_providers {
    platform = {
      source = "jfrog/platform"
      version = "1.15.1"
    }
  }
}

provider "platform" {}

module "jfrog_platform_saml_settings" {
  source = "../.." # Path to the root of the JFrog Platform Terraform provider repository

  # Enable only SAML settings
  create_saml_settings = true
  create_scim_group    = false
  create_scim_user     = false

  # Define SAML settings
  saml_enabled                      = true
  saml_settings_name                = "example_saml"
  saml_certificate                  = "CERTIFICATE_STRING_HERE"
  saml_mail                         = "email"
  saml_group_attribute              = "group"
  saml_id_attribute                 = "id"
  saml_login_url                    = "https://saml.example.com/login"
  saml_logout_url                   = "https://saml.example.com/logout"
  saml_auto_user_creation           = true
  saml_provider_name                = "ExampleProvider"
  saml_allow_user_to_access_profile = true
  saml_auto_redirect                = false
  saml_sync_groups                  = false
  saml_verify_audience_restriction  = true
  saml_use_encrypted_assertion      = false
}
