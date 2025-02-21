# Terraform VPC Module

This Terraform module creates a **Virtual Private Cloud** (VPC) in AWS, along with **public** and **private subnets**, an **internet gateway**, a **NAT gateway**, and appropriate **route tables**. It is designed to provide a basic networking setup that allows public instances to access the internet and private instances to communicate outbound via a NAT Gateway.

## Features

- Creates a VPC with customizable CIDR blocks.

- Configures public and private subnets.

- Creates an Internet Gateway (IGW) for public subnets.

- Deploys a NAT Gateway to enable outbound internet access for private subnets.

- Configures route tables for public and private subnets.

- Supports DNS resolution inside the VPC.

## Usage

To use this module in your Terraform configuration, include the following:

```HCL
module "my_vpc" {
  source = "git::https://github.com/user/terraform-aws-vpc.git"
  vpc_cidr           = "10.0.0.0/16"
  vpc_name           = "MyAppVPC"
  public_subnet_cidr  = "10.0.1.0/24"
  public_subnet_az    = "us-east-1a"
  private_subnet_cidr = "10.0.2.0/24"
  private_subnet_az   = "us-east-1b"
}
```

## **Inputs**

| Name                 | Description                                      | Type   | Default | Required |
|----------------------|------------------------------------------------|--------|---------|----------|
| `vpc_cidr`          | CIDR block for the VPC                         | string | n/a     | ✅  |
| `vpc_name`          | Name of the VPC                                | string | `MyVPC` | ❌  |
| `public_subnet_cidr` | CIDR block for the public subnet               | string | n/a     | ✅  |
| `public_subnet_az`   | Availability Zone for the public subnet        | string | n/a     | ✅  |
| `public_subnet_name`   | Name of the public subnet        | string | `Public Subnet`     | ❌  |
| `private_subnet_cidr`| CIDR block for the private subnet              | string | n/a     | ✅  |
| `private_subnet_az`  | Availability Zone for the private subnet       | string | n/a     | ✅  |
| `private_subnet_name`   | Name of the private subnet        | string | `Private Subnet`     | ❌  |
| `igw_name`   | Name of the internet gateway        | string | `Internet Gateway`     | ❌  |
| `nat_gw_name`   | Name of the NAT gateway        | string | `NAT Gateway`     | ❌  |
| `public_rt_name`   | Name of the public route table        | string | `Public Route Table`     | ❌  |
| `private_rt_name`   | Name of the private route table        | string | `Private Route Table`     | ❌  |

---

### **Outputs**

| Name                   | Description                          |
|------------------------|----------------------------------|
| `vpc_id`              | The ID of the created VPC        |
| `public_subnet_id`    | The ID of the public subnet      |
| `private_subnet_id`   | The ID of the private subnet     |
| `internet_gateway_id` | The ID of the Internet Gateway  |
| `nat_gateway_public_ip` | The public IP of the NAT Gateway |

## Example Output

After running terraform apply, you will see an output similar to:

Outputs:

```text
vpc_id = "vpc-0abcd1234ef567890"
public_subnet_id = "subnet-0abcd1234ef567890"
private_subnet_id = "subnet-0abcd1234ef567890"
internet_gateway_id = "igw-0abcd1234ef567890"
nat_gateway_public_ip = "203.0.113.25"
```

## Deployment Instructions

1. Initialize Terraform:

```HCL
terraform init
```

1. Apply the configuration:

```HCL
terraform apply
```

1. Destroy when no longer needed:

```HCL
terraform destroy
```

## Best Practices

- Use non-overlapping CIDR blocks for each subnet to avoid conflicts.

## License

This module is open-source and provided under the MIT License.

## Contributing

Feel free to submit pull requests for enhancements, bug fixes, or improvements!

Happy Terraforming!
