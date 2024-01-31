variable "default_region" {
    type            = object({
        name        = string
        region      = string
    })
    default         = {
        name        = "from-tf"
        region      = "ap-south-2"
    }
}

variable "network_details" {
    type            = object({
        name        = string
        cidr_block  = string
    })
    default         = {
        name        = "tf-vpc"
        cidr_block  = "10.0.0.0/16"
    }
}

variable "subnet_tags" {
    type            = list(string)
    default         = [ "Web1", "Web2", "App1", "App2" ]
}