#!/bin/bash
(echo n; echo ; echo ; echo ; echo ; echo w) | sudo fdisk /dev/sdb
sudo mkfs.ext4 /dev/sdb1
mkdir ~/MaskMount
sudo mount /dev/sdb1 ~/MaskMount
sudo chmod a+r ~/MaskMount
sudo chmod a+w ~/MaskMount
