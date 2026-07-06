terraform {

  required_version = ">= 1.0"

}



resource "local_file" "file1" {

  filename = var.file_name

  content = var.message

}



resource "local_file" "file2" {

  filename = "notes.txt"

  content = "Terraform Multiple Resources"

}



resource "local_file" "file3" {

  filename = "terraform.txt"

  content = "Infrastructure as Code"

}
