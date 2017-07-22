#!/bin/bash

hostnames=$1					#it will  read arguments from script executing command

USERNAME=sekhar 			    #assume we have common user and all host name or server, 'sekhar' is my username
echo Enter Command to execute in your entered Hosts				#here we have to read command to run on all servers

read command					#here read command which was entered by user

for i in $(echo $hostnames | sed "s/,/ /g")					#here we are reading host name from host names variables and removing comma host names variables

do
	
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -l ${USERNAME} $i $command          #here we are using ssh command commanding every host server and also disable the host key check and automatically add the host key list of known host,  if you don't want to add the know host file and the opposition userKnownhostfile=/dev/null, if they are password protected it prompt for password user need to enter every password

done