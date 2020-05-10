terraform-aws-asg

For Aws provider a module to create Auto Scaling Group and Elastic Load Balancer

module "app1" { 
source = "./module"
region =  "us-west-2"
key_name = "Terraform_module"
image_owner = "137112412989"
desired_capacity = 1
max_size         = 1
min_size         = 1
} 






Terraform will perform the following actions when you apply:

  + module.app1.aws_autoscaling_attachment.asg_attachment_bar
      id:                                                                                              <computed>
      autoscaling_group_name:                                                                          "${aws_autoscaling_group.example.id}"
      elb:                                                                                             "${aws_elb.bar.id}"

  + module.app1.aws_autoscaling_group.example
      id:                                                                                              <computed>
      arn:                                                                                             <computed>
      availability_zones.#:                                                                            "3"
      availability_zones.2050015877:                                                                   "us-west-2c"
      availability_zones.221770259:                                                                    "us-west-2b"
      availability_zones.2487133097:                                                                   "us-west-2a"
      default_cooldown:                                                                                <computed>
      desired_capacity:                                                                                "1"
      force_delete:                                                                                    "false"
      health_check_grace_period:                                                                       "300"
      health_check_type:                                                                               <computed>
      load_balancers.#:                                                                                <computed>
      max_size:                                                                                        "1"
      metrics_granularity:                                                                             "1Minute"
      min_size:                                                                                        "1"
      mixed_instances_policy.#:                                                                        "1"
      mixed_instances_policy.0.launch_template.#:                                                      "1"
      mixed_instances_policy.0.launch_template.0.launch_template_specification.#:                      "1"
      mixed_instances_policy.0.launch_template.0.launch_template_specification.0.launch_template_id:   "${aws_launch_template.example.id}"
      mixed_instances_policy.0.launch_template.0.launch_template_specification.0.launch_template_name: <computed>
      mixed_instances_policy.0.launch_template.0.launch_template_specification.0.version:              "$Default"
      mixed_instances_policy.0.launch_template.0.override.#:                                           "2"
      mixed_instances_policy.0.launch_template.0.override.0.instance_type:                             "c4.large"
      mixed_instances_policy.0.launch_template.0.override.0.weighted_capacity:                         "3"
      mixed_instances_policy.0.launch_template.0.override.1.instance_type:                             "c3.large"
      mixed_instances_policy.0.launch_template.0.override.1.weighted_capacity:                         "2"
      name:                                                                                            <computed>
      protect_from_scale_in:                                                                           "false"
      service_linked_role_arn:                                                                         <computed>
      target_group_arns.#:                                                                             <computed>
      vpc_zone_identifier.#:                                                                           <computed>
      wait_for_capacity_timeout:                                                                       "10m"

  + module.app1.aws_elb.bar
      id:                                                                                              <computed>
      arn:                                                                                             <computed>
      availability_zones.#:                                                                            "3"
      availability_zones.2050015877:                                                                   "us-west-2c"
      availability_zones.221770259:                                                                    "us-west-2b"
      availability_zones.2487133097:                                                                   "us-west-2a"
      connection_draining:                                                                             "true"
      connection_draining_timeout:                                                                     "400"
      cross_zone_load_balancing:                                                                       "true"
      dns_name:                                                                                        <computed>
      health_check.#:                                                                                  "1"
      health_check.0.healthy_threshold:                                                                "2"
      health_check.0.interval:                                                                         "30"
      health_check.0.target:                                                                           "HTTP:80/"
      health_check.0.timeout:                                                                          "3"
      health_check.0.unhealthy_threshold:                                                              "2"
      idle_timeout:                                                                                    "400"
      instances.#:                                                                                     <computed>
      internal:                                                                                        <computed>
      listener.#:                                                                                      "1"
      listener.3057123346.instance_port:                                                               "80"
      listener.3057123346.instance_protocol:                                                           "http"
      listener.3057123346.lb_port:                                                                     "80"
      listener.3057123346.lb_protocol:                                                                 "http"
      listener.3057123346.ssl_certificate_id:                                                          ""
      name:                                                                                            "foobar-terraform-elbs"
      security_groups.#:                                                                               <computed>
      source_security_group:                                                                           <computed>
      source_security_group_id:                                                                        <computed>
      subnets.#:                                                                                       <computed>
      tags.%:                                                                                          "1"
      tags.Name:                                                                                       "foobar-terraform-elbs"
      zone_id:                                                                                         <computed>

  + module.app1.aws_key_pair.asg-key
      id:                                                                                              <computed>
      fingerprint:                                                                                     <computed>
      key_name:                                                                                        "Terraform_module"
      key_pair_id:                                                                                     <computed>
      public_key:                                                                                      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCp4dTkryIUm++2V+7dmPJCBJaOmVJtuZ0+OkW5HxMmlWqZhfva/ogkvL1jrn67Y/6wCQX47GGYliIYsOyeNpvcTrnow8ruZ3P5dFUgeHjH2LBWdlZw4EVlXUtPGSDtPd6ZxNfZnW8Oim+CUS8tOWS5DkOpZCE0tfWfhui+/gtrrRC2WPxeVm3Wk3DLhmqglJi7VvwJ0C4O1FeIbuMDa43+JJxojUC0Ck55SuPdF6J6hF65ivTxhYuZJTgxGgUkK8BBD6oFsmxaXmHl4XFfcrZF+vVC4ctiDhZivYGiPDjpzrlpWhTit7Q/Ry8bSgQ71DDmnpAnCWa/JiSEDo36OCAB ec2-user@ip-172-31-5-215.us-west-1.compute.internal"

  + module.app1.aws_launch_template.example
      id:                                                                                              <computed>
      arn:                                                                                             <computed>
      default_version:                                                                                 <computed>
      image_id:                                                                                        "ami-0ab1913ead3883bb5"
      instance_type:                                                                                   "c5.large"
      latest_version:                                                                                  "0"
      metadata_options.#:                                                                              <computed>
      name:                                                                                            <computed>
      name_prefix:                                                                                     "example"
      user_data:                                                                                       "IyEvYmluL2Jhc2gKc3VkbyB5dW0gaW5zdGFsbCBodHRwZCAteQpzdWRvIHN5c3RlbWN0bCBzdGFydCBodHRwZApzdWRvIHN5c3RlbWN0bCBlbmFibGUgaHR0cGQKZWNobyAiPGgxPiBEZXBsb3llZCB2aWEgVGVycmFmb3JtIDwvaDE+IiB8IHN1ZG8gdGVlIC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbA=="
      vpc_security_group_ids.#:                                                                        <computed>

  + module.app1.aws_security_group.asg-sec-group
      id:                                                                                              <computed>
      arn:                                                                                             <computed>
      description:                                                                                     "Allow TLS inbound traffic"
      egress.#:                                                                                        "1"
      egress.482069346.cidr_blocks.#:                                                                  "1"
      egress.482069346.cidr_blocks.0:                                                                  "0.0.0.0/0"
      egress.482069346.description:                                                                    ""
      egress.482069346.from_port:                                                                      "0"
      egress.482069346.ipv6_cidr_blocks.#:                                                             "0"
      egress.482069346.prefix_list_ids.#:                                                              "0"
      egress.482069346.protocol:                                                                       "-1"
      egress.482069346.security_groups.#:                                                              "0"
      egress.482069346.self:                                                                           "false"
      egress.482069346.to_port:                                                                        "0"
      ingress.#:                                                                                       "1"
      ingress.22768159.cidr_blocks.#:                                                                  "1"
      ingress.22768159.cidr_blocks.0:                                                                  "0.0.0.0/0"
      ingress.22768159.description:                                                                    "TLS from VPC"
      ingress.22768159.from_port:                                                                      "22"
      ingress.22768159.ipv6_cidr_blocks.#:                                                             "0"
      ingress.22768159.prefix_list_ids.#:                                                              "0"
      ingress.22768159.protocol:                                                                       "tcp"
      ingress.22768159.security_groups.#:                                                              "0"
      ingress.22768159.self:                                                                           "false"
      ingress.22768159.to_port:                                                                        "22"
      name:                                                                                            "asg-sec-group"
      owner_id:                                                                                        <computed>
      revoke_rules_on_delete:                                                                          "false"
      tags.%:                                                                                          "1"
      tags.Name:                                                                                       "allow_tls"
      vpc_id:                                                                                          <computed>


Plan: 6 to add, 0 to change, 0 to destroy.