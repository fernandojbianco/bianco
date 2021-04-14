variable "organization" {
  description = "Organization ID"
  type        = string
  default     = "Bianco"
}

variable "workspace" {
  description = "Nome do Workspace"
  type        = string
  default     = "workspace-2"
}

variable "repository" {
  description = "Repositorio para ser utilizado do GitHub"
  type        = string
  default     = "Bianco/terraform-teste-1"
}

variable "GitHubTokenId" {
  description = "Token da conexao utilizada com o GitHub"
  type        = string
  default     = "xaB9vx1R8HBkEw.atlasv1.yBxsy4cXXzrjyRi6NrshuIrTf7pG3j27TXA4B7wiVAcmTgcYVqZkNWXX0lRgS2ZOVQM"
}

variable "branch" {
  description = "Branch que deve ser utilizada para o o Workspace"
  type        = string
  default     = "main"
}

#
# Variaveis para o Workspace
#
variable "AWS_DEFAULT_REGION" {
  description = "Regiao utilizada para criar os recursos"
  type = string
  default = "us-east-1"
}

variable "AWS_ACCESS_KEY_ID" {
  description = "Chave de acesso da conta AWS"
  type = string
  default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Secret da chave de acesso da conta AWS"
  type = string
}

variable "environment" {
  description = "Ambiente que esse WS ira atender"
  type = string
  default = "development" # (development, homologation, production)
}

variable "application" {
  description = "Nome da aplicacao"
  type = string
  default = "Apliacao-01"
}

variable "vs" {
  description = "Nome da VS Responsavel"
  type = string
  default = "VS"
}

variable "project" {
  description = "Nome do Projeto"
  type = string
  default = "projeto-01"
}

variable "team" {
  description = "Time Responsavel pela aplicacao"
  type = string
  default = "time-01"
}

variable "WORKSPACE_INFRACORE" {
  description = "Workspace utilizado como base"
  type = string
  default = "aws-production-account-infracore"
}