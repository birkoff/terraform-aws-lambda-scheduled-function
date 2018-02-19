resource "aws_cloudwatch_event_rule" "lambda-scheduled-function-event-rule" {
  name                = "${format("%s-event-rule", var.function_name)}"
  description         = "Lambda execution schedule rule"
  schedule_expression = "${var.event_schedule}"
}

resource "aws_cloudwatch_event_target" "lambda-scheduled-function-event-target" {
  rule      = "${aws_cloudwatch_event_rule.lambda-scheduled-function-event-rule.name}"
  target_id = "${format("%s-event-target", var.function_name)}"
  arn       = "${aws_lambda_function.lambda-scheduled-function.arn}"
}
