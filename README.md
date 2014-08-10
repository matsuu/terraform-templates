# Template files for Terraform

- aws-elb-ec2-route53
  - ELB + EC2(classic) + Route53
- aws-vpc-route53
  - EC2(VPC) + Route53

# Howto

    git clone https://github.com/matsuu/terraform-templates.git
    cd aws-elb-ec2-route53
    $EDITOR variable.tf
    terraform plan
    terraform apply
