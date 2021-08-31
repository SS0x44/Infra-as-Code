resource "aws_instance" "Mynode1" {
      ami                                  = "ami-06a0b4e3b7eb7a300"
      instance_type                        = "t2.micro"
      key_name                             = 
      monitoring                           = 
      availability_zone                    = 
      private_ip                           =
      secondary_private_ips                = 
      public_ip                            =
      associate_public_ip_address          = 
      security_groups                      = 
      source_dest_check                    = true
      subnet_id                            = 
      tags_all                             = 
      tenancy                              = 
      vpc_security_group_ids               = 
      disable_api_termination              = 
      ebs_optimized                        = 
      instance_initiated_shutdown_behavior = 
      instance_state                       = 
     }

capacity_reservation_specification {
           capacity_reservation_preference = 

           capacity_reservation_target {
           capacity_reservation_id = 
            }
        }

ebs_block_device {
         delete_on_termination = (known after apply)
         device_name           = (known after apply)
         encrypted             = (known after apply)
         iops                  = (known after apply)
         kms_key_id            = (known after apply)
         snapshot_id           = (known after apply)
         tags                  = (known after apply)
         throughput            = (known after apply)
         volume_id             = (known after apply)
         volume_size           = (known after apply)
         volume_type           = (known after apply)
        }

enclave_options {
         enabled = 
        }

ephemeral_block_device {
          device_name  = 
          no_device    = 
          virtual_name = 
        }

metadata_options {
           http_endpoint               = 
           http_put_response_hop_limit = 
           http_tokens                 = 
        }

network_interface {
           delete_on_termination = 
           device_index          = 
           network_interface_id  = 
        }

root_block_device {
        delete_on_termination = 
        device_name           = 
        encrypted             = 
        iops                  = 
        kms_key_id            = 
        tags                  = 
        throughput            = 
        volume_id             = 
        volume_size           = 
        volume_type           = 
        }
    }

