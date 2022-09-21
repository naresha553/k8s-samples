#!/bin/bash

read aws_access_key
read aws_secret_key
read aws_region
read aws_format

aws configure set aws_access_key_id $aws_access_key; aws configure set aws_secret_access_key $aws_secret_key; aws configure set default.region $YOUR_AWS_DEFAULT_REGION