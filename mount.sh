#!/usr/bin/env bash

# USER is already defined (std linux)
PASSWORD=smbpass
USERLOCALUID=`id -u`
VMIP=33.33.33.40
SHARE=srv-www
LOCALMOUNT=/mnt/vm-shares
VMNAME=magento


sudo mkdir -p ${LOCALMOUNT}
sudo chown ${USER} ${LOCALMOUNT}/

sudo mkdir -p ${LOCALMOUNT}/${VMNAME}
sudo chown ${USER} ${LOCALMOUNT}/${VMNAME}

sudo mkdir -p ${LOCALMOUNT}/${VMNAME}/${SHARE}
sudo chown ${USER} ${LOCALMOUNT}/${VMNAME}/${SHARE}
sudo mount -t cifs -o uid=${USERLOCALUID},username=${USER},password=${PASSWORD} //${VMIP}/${SHARE} ${LOCALMOUNT}/${VMNAME}/${SHARE}


