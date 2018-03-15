# DB subnet group
output "id" {
  description = "The db subnet group name"
  value       = "${element(concat(aws_db_subnet_group.this.*.id, list("")), 0)}"
}

output "arn" {
  description = "The ARN of the db subnet group"
  value       = "${element(concat(aws_db_subnet_group.this.*.arn, list("")), 0)}"
}
