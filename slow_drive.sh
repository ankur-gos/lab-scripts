#!/bin/bash
(echo n; echo ; echo ; echo ; echo ; echo w) | sudo fdisk /dev/sdb
sudo mkfs.ext4 /dev/sdb1
sudo mkdir /slowdisk
sudo mount /dev/sdb1 /slowdisk
sudo chmod a+r /slowdisk
sudo chmod a+w /slowdisk
