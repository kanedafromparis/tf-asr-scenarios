variable "location" {
  default = "West Europe"
  type = string
}

variable "usedtags" {
  default = {}
  type = map(any)
}

variable "mypublicipname" {
  default = "myip"
  type = string

}
variable "networksecuritygroupname" {
  default = "jugedread"
  type = string
}

variable "nic_001_nginx_name" {
  default = "example-nic"
  type = string
}