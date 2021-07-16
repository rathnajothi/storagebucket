variable "bucket_name" {
  type        = string
  #default     = "rathnabucketjuly"
  description = "Name of the bucket to be created"
}
variable "location" {
  type        = string
  description = "GCP location to deploy resources."

  validation {
    condition     = can(regex("^us-", var.location))
    error_message = "Unsupported GCP location specified. Only United States Regions are supported."
  }
}