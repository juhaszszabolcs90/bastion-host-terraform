provider "aws" {
  region = "eu-central-1"
}

module "vpc" {
  source = "./create_vpc"
}

module "subnets" {
  source = "./create_subnets"
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs = var.azs
}