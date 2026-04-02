#!/bin/bash

echo "Clonning Miuicamera Stuff"
git clone -b miuicamera https://github.com/Adarsh0127-Elite/device_xiaomi_duchamp-miuicamera.git device/xiaomi/duchamp-miuicamera
git clone -b lineage-23.2 https://gitlab.com/Adarsh0127-Elite/proprietary_vendor_xiaomi_duchamp-miuicamera.git vendor/xiaomi/duchamp-miuicamera

echo "Clonning Private keys"
git clone https://github.com/Adarsh0127-Elite/android_vendor_lineage-priv_keys-template.git -b master vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
echo "no" | ./generate.sh
cd ../../..

echo "Fixup! Audiotrack"
cd hardware/lineage/compat
git fetch https://github.com/LineageOS/android_hardware_lineage_compat refs/changes/04/447604/1 && git cherry-pick FETCH_HEAD
cd ../../..
