variable "project" {

}

variable "environment" {
                            #If nothing provided means, it is mandatory and should be provide in child module variables.tf as value passing
}


variable "vpc_id" {
    type = string
}

variable "sg_tags" {
    
}

variable "common_tags" {

}

variable "sg_name" {
    
}