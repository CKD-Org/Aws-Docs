#!/bin/bash
echo Listing AmiID and InstanceID
AMI=$(aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,ImageId]' --output text)

echo $AMI
