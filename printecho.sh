#!/bin/bash
      curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
        ibmcloud --version
        ibmcloud config --check-version=false
        ibmcloud plugin install -f kubernetes-service
        ibmcloud plugin install -f container-registry
        
          ibmcloud login -r eu-de --apikey "${IBM_CLOUD_API_KEY}"
        ibmcloud cr region-set "${IBM_CLOUD_REGION}"
        ibmcloud cr login
        

echo "printong inputs values env"
echo $INPUT_TAGS
echo $INPUT_LOGLEVEL
