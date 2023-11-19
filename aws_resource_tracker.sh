#!/bin/bash

########################
# Author: Sandhya
# Date: 18th-Nov
#
# Version: v1
#
# This script will report the AWS resource usage
#######################

set -x

# Log file path
LOG_FILE="/path/to/your/logfile.log"

# list EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$LOG_FILE" 2>&1 || { echo "Error getting EC2 instances"; echo "Error getting EC2 instances" | mail -s "Error in AWS Resource Tracker Script" your.email@example.com; exit 1; }

# list S3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> "$LOG_FILE" 2>&1 || { echo "Error getting S3 buckets"; echo "Error getting S3 buckets" | mail -s "Error in AWS Resource Tracker Script" your.email@example.com; exit 1; }

# list IAM users
echo "Print list of IAM users"
aws iam list-users >> "$LOG_FILE" 2>&1 || { echo "Error getting IAM users"; echo "Error getting IAM users" | mail -s "Error in AWS Resource Tracker Script" your.email@example.com; exit 1; }
