resource "aws_lambda_function" "lambda-scheduled-function" {
  s3_bucket     = "${var.s3_lambda_bucket}"
  s3_key        = "${var.s3_function_key}"
  function_name = "${var.function_name}"
  description   = "${var.description}"
  role          = "${var.lambda_role_arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  timeout       = "${var.timeout}"
  vpc_config    = {
    subnet_ids         = ["${var.vpc_subnet_ids}"]
    security_group_ids = ["${var.vpc_security_group_ids}"]
  }

  environment {
    variables = "${var.env_vars}"
  }

  tags = "${var.tags}"
}

resource "aws_lambda_permission" "lambda-scheduled-function-permission" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda-scheduled-function.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.lambda-scheduled-function-event-rule.arn}"
}
