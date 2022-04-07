#!/bin/bash
#===============================================================================
#
#
#			Gcloud Commands scripts
#
#
#	Run this scrict by mainGCP.sh function_name
#
#
#
#===============================================================================

# This will be the function passed as a parameter 
#
#ACTION="$1"

function setProject () {
	gcloud projects list
	read -p 'Choose from the list which GCP project you want to set: ' project
	gcloud config set project $project
}

function listVM () {
	gcloud compute instances list
}

function deleteVM () {
	gcloud compute instances list
	read -p 'Choose from the list which VM to delete (Boot disk will be deleted also): ' vm
	echo y | gcloud compute instances delete $vm
	echo y | gcloud compute disks delete $vm
}

function listAddress () {
	gcloud compute addresses list
}

function help() # Show a list of functions
{
    grep "^function" $0
}

#$ACTION

if [ "_$1" = "_" ]; then
    help
else
    "$@"
fi

