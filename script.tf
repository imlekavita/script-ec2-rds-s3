
#EC2.tf
provider "aws" {
  access_key = "Enter here access_key"
  secret_key = "Enter here secret_key"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "Ener here region supprt ami"
  instance_type = "t2.micro"
}
# s3.tf
terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "terraform-myproject"
    region = "us-east-1"
  }
}

#rds.tf
resource "aws_db_instance" "mariadb" {
 allocated_storage = 100  #100 G of storage

engine ="any databaselike mysql, mariadb"
engine_version = "which database use that letest version mention here"
instance_class = "db.t2.micro"
name = "  "
username = "username"
password = "pssword"
db_subnet_group_name = "if you created in aws mention here"
parameter_group_name = "parametername"

multi_az = "false" #set to true to have high availability: 2 instance synchronised with each other
vpc_security_group_ids =  "if you created vpc security in awss mention here" 

storage_type = "gp2"

backup_retention_period = 30 #how long you're going to keep your backups

availability_zone = "aws subnet availbility zone" 

tag{
name ="mariadb_instance"

}
}