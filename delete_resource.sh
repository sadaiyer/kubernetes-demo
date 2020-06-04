#! /bin/bash

read -p "Enter response: " response 
echo $response


if [ "$response" == "Y" ]; then
 echo "You entered Y"

 echo "Hello...you will be deleting resources.."
 read -p "Enter resource:" resource
 echo $resource
 count=`kubectl get $resource --no-headers | wc -l`
 echo "The count of resource $resource is $count"
 resourceName=`kubectl get $resource --no-headers | awk {'print $1'}`
 echo $resourceName
 if [ $count -ge 1 ]; then
#  for (( c=1; c<=$count; c++ ))
  for RESOURCENAME in $resourceName
  do  
    echo "$RESOURCENAME will be deleted"
    kubectl delete $resource $RESOURCENAME --force --grace-period=0
  done

 else
   echo "Resource $resource does not exist in namespace"
 fi





else
 echo "You entered N"
fi
