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
variable "subnet_object" {
    type = map(any)//
    default = {
      subnet_1 = {
        name = "Web"
        address_prefix = ["10.0.1.0/24" ]       
      },
      subnet_2 = {
        name = "App"
        address_prefix = ["10.0.11.0/24" ]       
      },
      subnet_3 = {
        name = "DataBase"
        address_prefix = ["10.0.22.0/24"  ]      
      }
    }  
}