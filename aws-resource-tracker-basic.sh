#!/bin/bash


##########################
# Author: Sudhanshu Kadam
# Date: 19th March 2026
#
# Version: v1
# This Script will report the AWS resource usage
# ########################


# AWS S3
# AWS EC2
# AWS Lambda
# IAM

set -x

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
# aws ec2 describe-instances

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users 
echo "Print list of IAM users"
aws iam list-users

