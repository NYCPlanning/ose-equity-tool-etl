#!/bin/bash

awslocal s3 mb s3://app/local
awslocal s3 cp /var/lib/localstack/app/local s3://app/local --recursive
