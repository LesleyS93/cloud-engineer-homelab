terraform {



  required_version = ">=1.0"



}





module "cloud_file" {



  source = "./modules/file_creator"





  filename = "cloud-engineer.txt"





  content = "Terraform Module Practice Day 18"



}
