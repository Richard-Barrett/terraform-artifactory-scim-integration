variable "create_saml_settings" {
  type    = bool
  default = false
}

variable "create_scim_group" {
  type    = bool
  default = false
}

variable "create_scim_user" {
  type    = bool
  default = false
}

variable "saml_allow_user_to_access_profile" {
  type        = bool
  description = "Allow user to access profile"
  default     = false
}

variable "saml_auto_redirect" {
  type        = bool
  description = "Automatically redirect SAML requests"
  default     = true
}

variable "saml_certificate" {
  type        = string
  description = "Certificate for SAML"
  sensitive   = true
}

variable "saml_enabled" {
  type        = bool
  description = "Enable SAML"
  default     = true
}

variable "saml_group_attribute" {
  type        = string
  description = "Group attribute for SAML"
}

variable "saml_id_attribute" {
  type        = string
  description = "Name ID attribute for SAML"
  sensitive   = true
}

variable "saml_login_url" {
  type        = string
  description = "Login URL for SAML"
}

variable "saml_logout_url" {
  type        = string
  description = "Logout URL for SAML"
}

variable "saml_mail" {
  type        = string
  description = "Email attribute for SAML"
  default     = ""
  sensitive   = true
}

variable "saml_auto_user_creation" {
  type        = bool
  description = "Disable automatic user creation for SAML"
  default     = true
}

variable "saml_provider_name" {
  type        = string
  description = "Service provider name for SAML"
}

variable "saml_settings_name" {
  type        = string
  description = "Name for the SAML settings"
}

variable "saml_sync_groups" {
  type        = bool
  description = "Sync groups for SAML"
  default     = true
}

variable "saml_use_encrypted_assertion" {
  type        = bool
  description = "Use encrypted assertion for SAML"
  default     = false
}

variable "saml_verify_audience_restriction" {
  type        = bool
  description = "Verify audience restriction for SAML"
  default     = true
}

variable "scim_group_display_name" {
  type        = string
  description = "Display name for SCIM group"
  default     = null
}

variable "scim_group_id" {
  type        = string
  description = "ID for SCIM group"
  default     = null
}

variable "scim_group_members" {
  type = list(object({
    value = string
    type  = string
  }))
  description = "Members of SCIM group"
  default     = []
}

variable "scim_user_active" {
  type        = bool
  description = "Active status for SCIM user"
  default     = false
}

variable "scim_user_emails" {
  type = list(object({
    value = string
    type  = string
  }))
  description = "Emails for SCIM user"
  sensitive   = true
  default     = []
}

variable "scim_user_username" {
  type        = string
  description = "Username for SCIM user"
  sensitive   = true
  default     = null
}
