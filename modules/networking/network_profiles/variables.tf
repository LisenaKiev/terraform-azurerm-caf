variable "resource_group_name" {
  description = "(Required) The name of the resource group where to create the resource."
  type        = string
}
variable "location" {
  description = "(Required) Specifies the supported Azure location where to create the resource. Changing this forces a new resource to be created."
  type        = string
}
variable "tags" {
  description = "(Required) Map of tags to be applied to the resource"
  type        = map(any)
}
variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = map(any)
}

variable "subnet_id" {
  description = "Reference to the subnet associated with the IP Configuration."
} 
variable "settings" {}