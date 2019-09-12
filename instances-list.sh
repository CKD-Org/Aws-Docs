#!/bin/bash
# Used to get the Instance ID, Instance Type, InstanceType, PrivateIP.
echo Listing InstanceID, ImageID, InstanceType, PrivateIP, Tags
Ins=$(aws ec2 describe-instances  --query 'Reservations[*].Instances[*].[InstanceId,ImageId,InstanceType,PrivateIpAddress,Tags]' --output text)
echo $Ins
updated by shanmukha
hi shanmukha this charan updating for u
