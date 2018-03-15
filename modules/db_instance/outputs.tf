# DB instance
output "address" {
  description = "The address of the RDS instance"
  value       = "${element(concat(aws_db_instance.this.*.address, list("")), 0)}"
}

output "arn" {
  description = "The ARN of the RDS instance"
  value       = "${element(concat(aws_db_instance.this.*.arn, list("")), 0)}"
}

output "availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = "${element(concat(aws_db_instance.this.*.availability_zone, list("")), 0)}"
}

output "endpoint" {
  description = "The connection endpoint"
  value       = "${element(concat(aws_db_instance.this.*.endpoint, list("")), 0)}"
}

output "hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = "${element(concat(aws_db_instance.this.*.hosted_zone_id, list("")), 0)}"
}

output "id" {
  description = "The RDS instance ID"
  value       = "${element(concat(aws_db_instance.this.*.id, list("")), 0)}"
}

output "resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = "${element(concat(aws_db_instance.this.*.resource_id, list("")), 0)}"
}

output "status" {
  description = "The RDS instance status"
  value       = "${element(concat(aws_db_instance.this.*.status, list("")), 0)}"
}

output "name" {
  description = "The database name"
  value       = "${element(concat(aws_db_instance.this.*.name, list("")), 0)}"
}

output "username" {
  description = "The master username for the database"
  value       = "${element(concat(aws_db_instance.this.*.username, list("")), 0)}"
}

output "password" {
  description = "The database password (this password may be old, because Terraform doesn't track it after initial creation)"
  value       = "${var.password}"
}

output "port" {
  description = "The database port"
  value       = "${element(concat(aws_db_instance.this.*.port, list("")), 0)}"
}
