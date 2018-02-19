# aws-lambda-scheduled-function
Terraform module which created AWS Lambda scheduled functions

These types of resources are created:
- aws_cloudwatch_event_rule
- aws_cloudwatch_event_target
- aws_lambda_function
- aws_lambda_permission

Lambda function role is not created by default, it has to be pass as parameter to the module

Usage
-------
````
variable "regions" {
  type = "map"
  default =  {
    ireland = "eu-west-1"
    frankfurt = "eu-central-1"
  }
}

provider "aws" {
  region = "${lookup(var.regions, "ireland")}"
}


module "my_scheduled_lambda_function_region_ireland" {
  source           = "birkoff/lambda-scheduled-function/aws"
  runtime          = "${var.runtime}"
  region           = "${lookup(var.regions, "ireland")}"
  function_name    = "${var.function_name}"
  timeout          = "${var.timeout}"
  s3_lambda_bucket = "${lookup(var.s3_lambda_bucket, "ireland")}"
  s3_function_key  = "${var.s3_function_key}"
  description      = "${var.description}"
  handler          = "${var.handler}"
  event_schedule   = "${var.event_schedule}"
  lambda_role_arn  = "${aws_iam_role.my-scheduled-lambda-function-role.arn}"
  
  env_vars = {
    URL = "${var.url}"
  }
  
  tags = {
    Owner     = "myusername"
    Region    = "ireland"
    Terraform = "true"
  }
}

module "my_scheduled_lambda_function_region_frankfurt" {
  source           = "birkoff/lambda-scheduled-function/aws"
  runtime          = "${var.runtime}"
  region           = "${lookup(var.regions, "frankfurt")}"
  function_name    = "${var.function_name}"
  timeout          = "${var.timeout}"
  s3_lambda_bucket = "${lookup(var.s3_lambda_bucket, "frankfurt")}"
  s3_function_key  = "${var.s3_function_key}"
  description      = "${var.description}"
  handler          = "${var.handler}"
  event_schedule   = "${var.event_schedule}"
  lambda_role_arn  = "${aws_iam_role.my-scheduled-lambda-function-role.arn}"
  
  env_vars = {
    URL = "${var.url}"
  }

  tags = {
    Owner     = "myusername"
    region    = "frankfurt"
    Terraform = "true"
  }
}
````

License
-------

MIT
