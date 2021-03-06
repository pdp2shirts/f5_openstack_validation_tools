#!/bin/bash

ENV=validate_neutron_for_f5_services

enabled_var="enable_$ENV"

if [[ ! ${!enabled_var} == 1 ]]
then
    echo "$ENV disabled"
    exit 0
else
    echo "installing $ENV"
fi

DIR=/$ENV

# initialize the environment
mkdir $DIR
cp -R /environments${DIR}/. $DIR/
cp $DIR/init-$ENV /init-$ENV
chmod +x /init-$ENV

