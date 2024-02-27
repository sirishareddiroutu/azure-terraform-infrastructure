variable "vm_name_pfx" {
    description = "vm names"
    default = "azure-vm-"
    type = string
}
variable "vm_count" {
    description = "count of vms"
    default = 3
    type = string  
}