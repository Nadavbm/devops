#!/bin/bash
#
echo "This script will help you delete a machine and it's boot disk"
echo "Listing GCP project which you'll need to set to run this script" 

gcloud projects list

read -p 'Choose from the list which GCP project you want to set: ' project

gcloud config set project $project

echo "Listing project VMs to pick the machine to Delete"

gcloud compute instances list

read -p 'Choose from the list which VM to delete (Boot disk will be deleted also): ' vm

echo y | gcloud compute instances delete $vm

echo y | gcloud compute disks delete $vm

