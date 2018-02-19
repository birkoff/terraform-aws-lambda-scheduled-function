output "lamda_fuction_id" {
  value = "${aws_lambda_function.lambda-scheduled-function.id}"
  description = "Lambda function ID"
}

output "lamda_fuction_arn" {
  value = "${aws_lambda_function.lambda-scheduled-function.arn}"
  description = "Lambda function ARN"
}

output "lamda_fuction_region" {
  value = "${var.region}"
  description = "Lambda function region"
}
