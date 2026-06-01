# infra/envs/production/outputs.tf

output "frontend_bucket_name" {
  value = module.frontend.bucket_name
}

output "cloudfront_distribution_id" {
  value = module.frontend.cloudfront_distribution_id
}

output "cloudfront_domain_name" {
  value = module.frontend.cloudfront_domain_name
}

# ── CloudWatch Logging Outputs ────────────────────────────────────────────────
output "app_log_group_name" {
  description = "CloudWatch Log Group for application logs"
  value       = module.cloudwatch_logging.app_log_group_name
}

output "app_log_group_arn" {
  description = "ARN of the application log group"
  value       = module.cloudwatch_logging.app_log_group_arn
}

output "audit_log_group_name" {
  description = "CloudWatch Log Group for audit logs"
  value       = module.cloudwatch_logging.audit_log_group_name
}

output "audit_log_group_arn" {
  description = "ARN of the audit log group"
  value       = module.cloudwatch_logging.audit_log_group_arn
}

output "ecs_task_execution_role_arn" {
  description = "ARN of the ECS task execution role"
  value       = module.cloudwatch_logging.ecs_task_execution_role_arn
}

output "ecs_task_role_arn" {
  description = "ARN of the ECS task role"
  value       = module.cloudwatch_logging.ecs_task_role_arn
}

output "lambda_execution_role_arn" {
  description = "ARN of the Lambda execution role"
  value       = module.cloudwatch_logging.lambda_execution_role_arn
}

output "log_configuration_for_ecs" {
  description = "Log configuration to use in ECS task definitions"
  value       = module.cloudwatch_logging.log_configuration_for_ecs
}
