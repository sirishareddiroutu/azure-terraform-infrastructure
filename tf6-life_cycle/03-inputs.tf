variable "business_unit" {
    type = string
    //default = "HR" 
}
variable "env" {
  default = "Dev"
  description = "Env variables"
  type = string
  }
  variable "address_space" {
    type = list(string)
    default = ["10.1.0.0/24","10.11.0.0/24"]
  }


  
  /*variable "owner" {
    type = string
    default = "Sirisha"
  }*/
  variable "custom_tags" {
    type = map(string)
    default = {
        "owner" = "Sirisha"
        "env" = "dev"
    }
  }
    variable "location" {
        type = string
    }

  
  
  