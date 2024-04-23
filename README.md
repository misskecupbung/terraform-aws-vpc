# terraform-aws-vpc
Terraform AWS VPC

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.20.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.20.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc_mod"></a> [vpc\_mod](#module\_vpc\_mod) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="account_id"></a> [account\_id](#input\_account\_id) | Account ID where the resources will be placed. | `string` | `null` | no |
| <a name="aws_region"></a> [aws\_region](#input\_aws\_region) | Specific location for the resources. Default ap-southeast-1 | `string` | `null` | no |
| <a name="env_code"></a> [env\_code](#input\_env\_code) | "Environment code such as dev, qa or prd." | `string` | `null` | no |
| <a name="cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The IPv4 CIDR block for the VPC. | `string` | `null` | no |
| <a name="enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false. | `bool` | `true` | no |
| <a name="enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | A boolean flag to enable/disable DNS support in the VPC. Defaults to true. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="id"></a> [id](#output\_id) | The ID of the VPC. |
| <a name="arn"></a> [arn](#output\_arn) | "Amazon Resource Name (ARN) of VPC" |
<!-- END_TF_DOCS -->