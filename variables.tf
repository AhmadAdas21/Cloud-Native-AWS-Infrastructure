variable "aws_region"{
    description="AWS Region"
    type=string
    default="il-central-1"
}
variable "project_name"{
    description="Project Name"
    type=string
    
    default="AhmadAdas-project"
    validation {
        condition     = length(var.project_name) > 0
        error_message = "Project name must not be empty."
    }
}

variable "environment"{
    description="Environment"
    type=string
    default="dev"
    validation{
        condition=contains(["dev","staging","prod"],var.environment)
        error_message="Environment must be one of: dev, staging, prod."
    }
}
variable "vpc_cidr"{
    description="VPC CIDR"
    type=string
    default="10.0.0.0/16"
}
variable "s3_bucket_name"{
    description="S3 Bucket Name"
    type=string
    default="my-bucket"
}
variable"bucket_prefix"{
    description="S3 Bucket Prefix"
    type=string
   # default="my-prefix"
}