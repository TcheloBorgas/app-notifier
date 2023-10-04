
# NETWORK VARS DEFAULT VALUES (INPUT IS REQUIRED BECAUSE NO DEFAULT IS DEFINED)

variable "vpc_id" {}
variable "vpc_cidr" {}
variable "vpc_sn_pub_az1_id" {}
variable "vpc_sn_pub_az2_id" {}
variable "vpc_sg_pub_id" {}

# COMPUTE VARS DEFAULT VALUES

variable "ec2_lt_name" {
    type    = string
    default = "ec2_lt_name"
}

# [Other ec2 variables ...]

variable "ec2_asg_max_size" {
    type    = number
    default = 16
}

variable "rds_endpoint" {
  description = "The endpoint (URL) for the RDS instance."
  type        = string
}

variable "rds_dbuser" {
  description = "The username for the RDS database."
  type        = string
}

variable "rds_dbpassword" {
  description = "The password for the RDS database user."
  type        = string
  sensitive   = true
}

variable "rds_dbname" {
  description = "The name of the RDS database."
  type        = string
}
