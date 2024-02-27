variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "rg-project"
  
}

variable "env_name" {
  description = "Env name"
  type = string
  default = "staging"
}

variable "owner_name" {
  description = "who created"
  type = string
  default = "sirisha"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
}

variable "vnet_address_space" {
  description = "Vnet address space"
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "vnet_name" {
  description = "Vnet name"
  type        = string
  default     = "vnet-project"
}

# variable "subnet_address_prefixes" {
#   description = "subnet address space"
#   type        = list(any)
#   default = [
#     {

#       address_prefixes = ["10.1.1.0/24"]
#       name             = "Websubnet"
#     },
#     {
#       address_prefixes = ["10.1.11.0/24"]
#       name             = "Appsubnet"
#     },
#     {
#       address_prefixes = ["10.1.21.0/24"]
#       name             = "DBsubnet"
#     }
#   ]
# }

# locals {
#   nsgs = [
#     {
#       name = "nsgWeb"
#       security_rule = [
#         {
#           name                       = "AllowWebIn"
#           priority                   = 100
#           direction                  = "Inbound"
#           access                     = "Allow"
#           protocol                   = "Tcp"
#           source_port_range          = "*"
#           destination_port_range     = "80"
#           source_address_prefix      = "*"
#           destination_address_prefix = "*"
#         },
#         {
#           name                       = "AllowSSLIn"
#           priority                   = 101
#           direction                  = "Inbound"
#           access                     = "Allow"
#           protocol                   = "Tcp"
#           source_port_range          = "*"
#           destination_port_range     = "443"
#           source_address_prefix      = "*"
#           destination_address_prefix = "*"
#         },
#         {
#           name                       = "AllowSSHIn"
#           priority                   = 102
#           direction                  = "Inbound"
#           access                     = "Allow"
#           protocol                   = "Tcp"
#           source_port_range          = "*"
#           destination_port_range     = "22"
#           source_address_prefix      = "*"
#           destination_address_prefix = "*"
#         }
#       ]
#     },
#     {
#       name = "nsgApp"
#       security_rule = [
#         {
#           name                       = "AllowWebIn"
#           priority                   = 100
#           direction                  = "Inbound"
#           access                     = "Allow"
#           protocol                   = "Tcp"
#           source_port_range          = "*"
#           destination_port_range     = "80"
#           source_address_prefix      = "*"
#           destination_address_prefix = "*"
#         },
#         {
#           name                       = "AllowTCPIn"
#           priority                   = 101
#           direction                  = "Inbound"
#           access                     = "Allow"
#           protocol                   = "Tcp"
#           source_port_range          = "*"
#           destination_port_range     = "4000"
#           source_address_prefix      = "*"
#           destination_address_prefix = "*"
#         }
#       ]
#     },
#     {
#       name = "nsgDB"
#       security_rule = [
#         {
#           name                       = "AllowDBIn"
#           priority                   = 100
#           direction                  = "Inbound"
#           access                     = "Allow"
#           protocol                   = "Tcp"
#           source_port_range          = "*"
#           destination_port_range     = "3306"
#           source_address_prefix      = "*"
#           destination_address_prefix = "*"
#         }
#       ]
#     }
#   ]
# }

# # variable "vm_map" {
# #   description = "Map unique values to the vms"
# #   type = map(object({
# #     name           = string
# #     size           = string
# #     admin_password = string
# #   }))

# #   default = {
# #     "WebVm" = {
# #       admin_password = "Passwordweb"
# #       name           = "WebVm"
# #       size           = "Standard_B2s"
# #       custom_data    = filebase64("${path.module}/appscript/install_apache.sh")
# #     }
# #     "AppVm" = {
# #       admin_password = "PasswordApp"
# #       name           = "AppVMm"
# #       size           = "Standard_B1s"
# #     }
# #     "DBVm" = {
# #       admin_password = "PasswordDB"
# #       name           = "DBVM"
# #       size           = "Standard_B1s"
# #     }
# #   }
# # }

