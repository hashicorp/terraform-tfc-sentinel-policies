variable "tfe_hostname" {
  description = "Host name for the TFE instance. Defaults to TFC i.e. app.terraform.io if unspecified"
  type        = string
  default     = ""
}

variable "tfe_organization" {
  description = "The TFE organization where Sentinel based policy sets will be created. These policies will run against all the workspaces present in the organization"
  type        = string
}

variable "create_global_policy_set" {
  description = "If true, the policy set is applied to all the workspaces within the organization."
  type        = string
  default     = false
}

variable "policy_set_workspace_ids" {
  description = "List of workspace IDs to scope the policy set to. Ignored if `var.create_global_policy_set` is set to true"
  type        = list(string)
  default     = []
}

variable "github_oauth_token" {
  description = "OAuth token having read access to the repository inputted via 'var.policy_github_repository'"
  type        = string
}

variable "name" {
  description = "Common suffix/prefix prepended/appended to all the resources getting created with this module."
  type        = string
}

variable "policy_github_repository" {
  description = "The name of the GitHub repository where the policies reside. This name should also include the GitHub organization followed by a '/'. Example: hashicorp/policy-library-aws-cis-v3.0.0-terraform"
  type        = string
}