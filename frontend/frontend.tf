# Creating a module to provision 2 Frontend EC2 machines
module "create-me frontend1" {
  source    = "../week6-proj-module/"
  node_name = var.frontend1_name
  user_data  = file("./frontend-install.sh")
  sg_name   = var.frontend1_sg_name.id
  ingress_port_1 = var.frontend1_ingress_port_1
  ingress_port_2 = var.frontend1_ingress_port_2
}

module "create-me frontend2" {
  source    = "../week6-proj-module/"
  node_name = var.frontend2_name
  user_data  = file("./frontend-install.sh")
  sg_name   = var.frontend2_sg_name.id
  ingress_port_1 = var.frontend2_ingress_port_1
  ingress_port_2 = var.frontend2_ingress_port_2
}