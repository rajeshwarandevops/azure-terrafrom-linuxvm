
#Common vars


variable "rgname" {
  default = "rajeshdevops-terraform"
  type    = string
}

variable "location" {
  default = "uaenorth"
  type    = string
}

# vm vars

variable "vmname" {
  default = "webvm01"
  type    = string
}


variable "vmsize" {
  default = "Standard_B1s"
  type    = string
}

variable "vmusername" {
  default = "admin"
  type    = string
}


variable "publisher" {
  default = "Canonical"
  type    = string
}

variable "offer" {
  default = "UbuntuServer"
  type    = string
}

variable "sku" {
  default = "18.04-LTS"
  type    = string
}

variable "os_version" {
  default = "latest"
  type    = string
}


variable "nicname" {
  default = "webvm01-nic"
  type    = string
}


# network Vars
variable "vnetname" {
  default = "vnet-main"
  type    = string
}

# network Vars
variable "address_space" {
  default = ["10.0.0.0/16"]
  type    = list(any)
}


variable "snetname" {
  default = "snet-web"
  type    = string
}


variable "address_prefixes" {
  default = ["10.0.0.0/24"]
  type    = list(any)
}

variable "vm-pip-name" {
  default = "web-vm-pip"
  type    = string
}


variable "allocation_method" {
  default = "Static"
  type    = string
}


variable "private_ip_address_allocation" {
  default = "Dynamic"
  type    = string
}



variable "client_id" {
  default = "Dynamic"
  type    = string
}


variable "client_secret" {
  default = "Dynamic"
  type    = string
}


variable "subscription_id" {
  default = "Dynamic"
  type    = string
}

variable "tenant_id" {
  default = "Dynamic"
  type    = string
}



