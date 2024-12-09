variable "resource_group_name" {
  type        = string
  description = "Nom du groupe de ressources"
  default     = "nodejs-app-rg"
}

variable "location" {
  type        = string
  description = "La région où l'application sera hébergée"
  default     = "East US"
}

variable "app_service_plan_name" {
  type        = string
  description = "Nom du plan App Service"
  default     = "nodejs-app-plan"
}

variable "app_service_name" {
  type        = string
  description = "Nom de l'App Service"
  default     = "nodejs-app-service"
}
