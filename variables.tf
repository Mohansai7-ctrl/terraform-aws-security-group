variable "project_name" {

}

variable "environment" {
                            #If nothing provided means, it is mandatory and should be provide in child module variables.tf as value passing
}


variable "vpc_id" {
    
}

variable "sg_tags" {
    default = {}
    
}

variable "common_tags" {
    default = {}
}

variable "sg_name" {

}