# aws-lambda-scheduled-function
Terraform module for AWS Lambda scheduled functions

````
module "lambda_notify_instance_missing_tags_ireland" {
  source           = "../modules/aws-lambda-scheduled-function"
  runtime          = "${var.runtime}"
  region           = "${lookup(var.regions, "ireland")}"
  function_name    = "${var.function_name}"
  timeout          = "${var.timeout}"
  s3_lambda_bucket = "${lookup(var.s3_lambda_bucket, "ireland")}"
  s3_function_key  = "${var.s3_function_key}"
  description      = "${var.description}"
  handler          = "${var.handler}"
  event_schedule   = "${var.event_schedule}"
  lambda_role_arn  = "${aws_iam_role.notify-instance-missing-tags-role.arn}"
  env_vars         = "${var.env_vars}"

  tags = {
    Owner     = "hector"
    Product   = "ireland"
    Terraform = "true"
  }
}
````

````
module "lambda_notify_instance_missing_tags_frankfurt" {
  source           = "../modules/aws-lambda-scheduled-function"
  runtime          = "${var.runtime}"
  region           = "${lookup(var.regions, "frankfurt")}"
  function_name    = "${var.function_name}"
  timeout          = "${var.timeout}"
  s3_lambda_bucket = "${lookup(var.s3_lambda_bucket, "frankfurt")}"
  s3_function_key  = "${var.s3_function_key}"
  description      = "${var.description}"
  handler          = "${var.handler}"
  event_schedule   = "${var.event_schedule}"
  lambda_role_arn  = "${aws_iam_role.notify-instance-missing-tags-role.arn}"
  env_vars         = "${var.env_vars}"

  tags = {
    Owner     = "hector"
    Product   = "frankfurt"
    Terraform = "true"
  }
}
````
