module "compute_1" {
  source                   = "../../modules/compute"
  instance_public_key_name = var.instance_public_key_name
  instance_public_key      = file("~/.ssh/terraform-ipssi.pub")
  sg_id                    = var.sg_id
  subnet_id                = var.subnet_id
  instance_name            = var.instance_name
}
