output "created_file" {

  value = local_file.file1.filename

}



output "terraform_message" {

  value = var.message

}
