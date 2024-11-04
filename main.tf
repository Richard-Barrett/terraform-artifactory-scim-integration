terraform {
  required_version = ">= 1.5.6"
  required_providers {
    platform = {
      source  = "jfrog/platform"
      version = "1.16.0"
    }
  }
}

resource "platform_saml_settings" "this" {
  count = var.create_saml_settings ? 1 : 0

  name                         = "upper${(var.saml_settings_name)}_JFROG_PLATFORM_SAML_SETTINGS"
  enable                       = var.saml_enabled
  certificate                  = var.saml_certificate
  email_attribute              = var.saml_mail
  group_attribute              = var.saml_group_attribute
  name_id_attribute            = var.saml_id_attribute
  login_url                    = var.saml_login_url
  logout_url                   = var.saml_logout_url
  auto_user_creation           = var.saml_auto_user_creation
  service_provider_name        = var.saml_provider_name
  allow_user_to_access_profile = var.saml_allow_user_to_access_profile
  auto_redirect                = var.saml_auto_redirect
  sync_groups                  = var.saml_sync_groups
  verify_audience_restriction  = var.saml_verify_audience_restriction
  use_encrypted_assertion      = var.saml_use_encrypted_assertion
}

resource "platform_scim_group" "this" {
  count = var.create_scim_group ? 1 : 0

  id           = var.scim_group_id
  display_name = var.scim_group_display_name
  members      = var.scim_group_members
}

resource "platform_scim_user" "this" {
  count = var.create_scim_user ? 1 : 0

  username = var.scim_user_username
  active   = var.scim_user_active
  emails   = var.scim_user_emails
}
