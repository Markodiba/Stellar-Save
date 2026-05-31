# infra/envs/staging/variables.tf

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN for staging.stellar-save.app (us-east-1)"
  type        = string
  default     = ""
}

variable "app_log_retention_days" {
  description = "CloudWatch Logs retention period for application logs (days)"
  type        = number
  default     = 30
}

variable "audit_log_retention_days" {
  description = "CloudWatch Logs retention period for audit logs (days)"
  type        = number
  default     = 90
}

variable "create_cloudwatch_alarms" {
  description = "Whether to create CloudWatch alarms for error monitoring"
  type        = bool
  default     = true
}

variable "critical_error_alarm_threshold" {
  description = "Threshold for triggering critical error alarms"
  type        = number
  default     = 1
}

variable "create_lambda_role" {
  description = "Whether to create Lambda execution role for CloudWatch logging"
  type        = bool
  default     = false
}
