terraform {

  required_version = ">= 1.0"

}



resource "local_file" "cloudlab" {

  filename = "message.txt"

  content  = var.message

}
