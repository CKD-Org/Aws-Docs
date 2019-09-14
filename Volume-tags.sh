#!/bin/bash
echo "Volumes with tag details"

#alltags=$(aws ec2 describe-volumes --query "Volumes[*].{ID:VolumeId,Snap:SnapshotId,Tag:Tags[]}"  --output text)
#specific=$(aws ec2 describe-volumes --filters Name=tag:Env,Values=Dev* --query "Volumes[*].{ID:VolumeId,Tag:Tags}" --output text)

tags=$(aws ec2 describe-volumes --query 'Volumes[*].[VolumeId, SnapshotId, Attachments[0].Device, Tags]' --output text)
echo $tags

#echo $specific
#echo $alltags | awk '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10"\n"}';


echo $alltags
