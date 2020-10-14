#!/bin/bash
set -ex

mkdir -p ~/.aws
echo -e "\n[develop]\nregion=us-east-1\nsource_profile=develop\nrole_arn=$AwsCfServiceRoleArn_develop" > ~/.aws/config
echo -e "\n[prod]\nregion=us-east-1\nsource_profile=prod\nrole_arn=$AwsCfServiceRoleArn_prod" >> ~/.aws/config
echo -e "\n[strides]\nregion=us-east-1\nsource_profile=strides\nrole_arn=$AwsCfServiceRoleArn_strides" >> ~/.aws/config

echo -e "\n[develop]\nregion=us-east-1\naws_access_key_id=$AwsTravisAccessKey_develop\naws_secret_access_key=$AwsTravisSecretAccessKey_develop" > ~/.aws/credentials
echo -e "\n[prod]\nregion=us-east-1\naws_access_key_id=$AwsTravisAccessKey_prod\naws_secret_access_key=$AwsTravisSecretAccessKey_prod" >> ~/.aws/credentials
echo -e "\n[strides]\nregion=us-east-1\naws_access_key_id=$AwsTravisAccessKey_strides\naws_secret_access_key=$AwsTravisSecretAccessKey_strides" >> ~/.aws/credentials
