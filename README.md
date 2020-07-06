# Complete ECS

This repo is [filter-branched](https://docs.github.com/en/github/using-git/splitting-a-subfolder-out-into-a-new-repository) from https://github.com/terraform-aws-modules/terraform-aws-ecs/tree/master/examples/complete-ecs

## Why work with ALB only

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html

>We recommend that you use Application Load Balancers for your Amazon ECS services so that you can take advantage of these latest features, unless your service requires a feature that is only available with Network Load Balancers or Classic Load Balancers. For more information about Elastic Load Balancing and the differences between the load balancer types, see the Elastic Load Balancing User Guide.

## Usage

To run this example you need to execute:

```bash
terraform init
terraform plan
terraform apply
```

Note that this example may create resources which can cost money (AWS EC2 instances, net gateway, application load balancer, etc). Run `terraform destroy` when you don't need these resources.

## Explanation

Current version creates an high-available VPC with instances that are attached to ECS cluster. A nginx application running as ECS Service and expost dynamic ports to attached Application load balancer.

## reference:
* <https://github.com/anrim/terraform-aws-ecs>
* <https://github.com/arminc/terraform-ecs>
* <https://github.com/alex/ecs-terraform>
* <https://github.com/Capgemini/terraform-amazon-ecs>
