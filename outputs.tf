output "lamda_fuction_id" {
  value = "${aws_lambda_function.lambda-scheduled-function.id}"
}

output "lamda_fuction_arn" {
  value = "${aws_lambda_function.lambda-scheduled-function.arn}"
}

output "lamda_fuction_region" {
  value = "${var.region}"
}
