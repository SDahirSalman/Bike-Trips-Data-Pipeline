variable "access_key" {
     description = "Access key to AWS console"
}
variable "secret_key" {
     description = "Secret key to AWS console"
}
variable "region" {
     description = "Region of AWS VPC"
}

variable "bucket_name" {
  description = "(Required) Creates a unique bucket name"
  type        = string
  default     = "rideshare-bucket-pipeline"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket"
  type        = map(string)
  default     = {"env": "ride"}
}
variable "vpc_cidr" { 
}
variable "redshift_subnet_cidr_first" { 
}
variable "redshift_subnet_cidr_second" { 

}

variable "rs_cluster_identifier" { }

variable "rs_database_name" { }

variable "rs_master_username" { }

variable "rs_master_pass" { }

variable "rs_nodetype" { }

variable "rs_cluster_type" { }