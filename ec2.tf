

locals {
  common_tags = {
    Name = "jjtech"
    App_Name = "ovid"
    Cost_center = "xyz222"
    Business_unit = "GBS"
    Project = "GBS"
    App_role = "web server"
    Customer = "students"
    Environment = "dev"
    Confidentiality = "Restricted"
    Owner = "jespo_mbwoge@jjtechinc.co"
    Opt_in-Opt_out = "Yes"
    Application_ID = "197702"
    Compliance = "pci"
  }
}

resource "aws_instance" "jjtechweb" {
  ami = var.ami_id["rhel"]
  instance_type = var.instance_type[0]

    tags = local.common_tags

}
# ne paragraph
resource "aws_alb" "newresource" {
  
}