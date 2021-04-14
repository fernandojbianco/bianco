terraform {
  required_providers {
    tfe = {
      version = "~> 0.24.0"
    }
  }
}

# Novo Workspace
resource "tfe_workspace" "novo-workspace" {
  name         = var.workspace
  organization = var.organization
  vcs_repo {
    identifier     = var.repository
    oauth_token_id = var.GitHubTokenId
    branch         = var.branch
  }
}

resource "tfe_variable" "AWS_DEFAULT_REGION" {
  key      = "AWS_DEFAULT_REGION"
  value    = var.AWS_DEFAULT_REGION
  category = "terraform"
  workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key       = "AWS_ACCESS_KEY_ID"
  value     = var.AWS_ACCESS_KEY_ID
  category  = "terraform"
  workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key      = "AWS_SECRET_ACCESS_KEY"
  value    = var.AWS_SECRET_ACCESS_KEY
  category = "terraform"
  sensitive    = true
    workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "environment" {
  key      = "environment"
  value    = var.environment
  category = "terraform"
    workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "application" {
  key      = "application"
  value    = var.application
  category = "terraform"
    workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "vs" {
  key      = "vs"
  value    = var.vs
  category = "terraform"
    workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "project" {
  key      = "project"
  value    = var.project
  category = "terraform"
    workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "team" {
  key      = "team"
  value    = var.team
  category = "terraform"
    workspace_id = tfe_workspace.novo-workspace.id
}

resource "tfe_variable" "WORKSPACE_INFRACORE" {
  key      = "WORKSPACE_INFRACORE"
  value    = var.WORKSPACE_INFRACORE
  category = "terraform"
    workspace_id = tfe_workspace.novo-workspace.id
}