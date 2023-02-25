variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}
variable "sample2" {}

output "sample2" {
  value = var.sample2
}
variable "cli" {}

output "cli" {
  value = var.cli

}
variable "input" {}

variable "sample5" {
  default = "Hello"
}
variable "sample6" {
  default =  [
    "Hello",
    1000,
    true,
    "World"
  ]
}
variable "sample7" {
  default =  {
    string = "Hello",
    number = 100,
    boolean = true
  }
}
output "types" {
  value = "Variable sample5 - ${var.sample5}, third value in list - ${var.sample6[3]}, Boolean Value of Map = ${var.sample7["boolean"]}"
}




