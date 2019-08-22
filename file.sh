
echo "Download latest Ops Manager for vSphere"
../pcftools/pivnet-download.sh iigMJxjc3wkqxRiknHR1 https://network.pivotal.io/api/v2/products/ops-manager/releases/443448/product_files/463628/download ops-manager-vsphere-2.6.8-build.192.ova

echo "Download Platform Automation Engine Tile"
../pcftools/pivnet-download.sh iigMJxjc3wkqxRiknHR1 https://network.pivotal.io/api/v2/products/platform-automation-engine/releases/424152/product_files/442290/download control-plane-1.0.0-rc.1.pivotal

echo "Download Platform Automation Engine Stem Cell"
../pcftools/pivnet-download.sh iigMJxjc3wkqxRiknHR1 https://network.pivotal.io/api/v2/products/stemcells-ubuntu-xenial/releases/416009/product_files/433146/download bosh-stemcell-315.70-vsphere-esxi-ubuntu-xenial-go_agent.tgz

echo "Download Platform Automation docker image"
../pcftools/pivnet-download.sh iigMJxjc3wkqxRiknHR1 https://network.pivotal.io/api/v2/products/platform-automation/releases/417731/product_files/435156/download platform-automation-image-3.0.5.tgz

sudo apt-get install jq

export TEMP_DIR=$(mktemp -d)
cp ops-manager-vsphere*.ova "${TEMP_DIR}/ops-manager.ova"


