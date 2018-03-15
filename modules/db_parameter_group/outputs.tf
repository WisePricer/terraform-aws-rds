# DB parameter group
output "id" {
  description = "The db parameter group id"
  value       = "${element(split(",", join(",", aws_db_parameter_group.this.*.id)), 0)}"
}

output "arn" {
  description = "The ARN of the db parameter group"
  value       = "${element(split(",", join(",", aws_db_parameter_group.this.*.arn)), 0)}"
}
