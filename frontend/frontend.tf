variable "node_name" {}
variable "Frontend1" {}
variable "sg_name" {}



# Creating a module to provision 2 Frontend EC2 machines
module "create-me Frontend1" {
  source    = "./week6-proj-module/"
  node_name = var.Frontend1_name
  user_data  = file("./frontend-install.sh")
  sg_name   = var.Frontend1_sg_name.id
  ingress_port_1 = var.Frontend1_ingress_port_1
  ingress_port_2 = var.Frontend1_ingress_port_2
}
module "create-me Frontend2" {
  source    = "./week6-proj-module/"
  node_name = var.Frontend2_name
  user_data  = file("./frontend-install.sh")
  sg_name   = var.Frontend2_sg_name.id
  ingress_port_1 = var.Frontend2_ingress_port_1
  ingress_port_2 = var.Frontend2_ingress_port_2
}