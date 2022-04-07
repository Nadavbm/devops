variable "ssh_public_key" {
    description = "Your public key - for auth"
    type = "string"

    default = "/home/user/.ssh/id_rsa.pub"
}
