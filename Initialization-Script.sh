#!/bin/bash

echo "Enter access Key"
read aws_access_key
echo "Enter secret access Key"
read aws_secret_key
echo "Enter region Key"
read aws_region
echo "Enter format Key"
read aws_format


aws configure set aws_access_key_id $aws_access_key; aws configure set aws_secret_access_key $aws_secret_key; aws configure set default.region $YOUR_AWS_DEFAULT_REGION