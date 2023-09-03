data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
data "aws_partition" "current" {}
data "aws_subnet_ids" "public" {
    vpc_id = "${data.aws_vpc.vpc_id.id}"
}
data "aws_subnet" "az_subnet" {
    for_each = "${data.aws_subnet_ids.public.ids}"
    id = "${each.value}"
}
data "aws_vpc" "vpc_id" {
    filter {
        name = "tag:Name"
        values = ["default_vpc"]
    }
}
# Compare this snippet from common-svcs/vpc/infrastructure/terraform.tfvars:
# Compare this snippet from common-svcs/vpc/infrastructure/variable.tf: