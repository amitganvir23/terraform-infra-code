/*
   Variables for bastion
*/

variable "region" {}
variable "azs" {
    default = []
}
variable "aws_key_name" {}

variable "environment" {}

variable "vpc_id" {}
#variable "aws_pub_subnet_id" {}
# variable "vpc_zone_identifier" {}
variable "vpc_zone_identifier" {
    default = []
}

# variable "aws_pub_subnet_id_str" {
#    default = []
# }
# variable "vpc_cidr" {}

variable "kafka_image" {}
variable "kafka_instance_type" {}
variable "kafka_instance_count" {}
variable "kafka_cluster_size" {}
variable "kafka_lc" {}
// Tags //
variable "kafka_service_name" {}


/*
   Variables for zookeeper
*/
// zookeeper //
variable "zookeeper_image" {}
variable "zookeeper_instance_type" {}
variable "zookeeper_instance_count" {}
variable "zookeeper_cluster_size" {}
variable "zookeeper_lc" {}
// Tags //
variable "zookeeper_service_name" {}

/*
   Variables for Route 53
*/
variable "zone_name" {}
variable "rec_name" {}
