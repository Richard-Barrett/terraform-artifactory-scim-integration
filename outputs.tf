output "saml_settings_name" {
  description = "The name of the SAML settings resource"
  value       = platform_saml_settings.this[0].name
}

output "saml_login_url" {
  description = "The login URL for SAML"
  value       = platform_saml_settings.this[0].login_url
}

output "saml_logout_url" {
  description = "The logout URL for SAML"
  value       = platform_saml_settings.this[0].logout_url
}

output "saml_provider_name" {
  description = "The service provider name for SAML"
  value       = platform_saml_settings.this[0].service_provider_name
}
