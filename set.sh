

cat > "${TEMP_DIR}/p_automator_config.yml" <<EOF
---
opsman-configuration:
  vsphere:
    private_ip: "10.200.200.200"
    dns: "10.10.10.10"
    ntp: "YOUR-NTP-SERVER.example.com"
    ssh_public_key: "ssh-rsa YOUR-SSH-PUBLIC-KEY"
    ssh_password: "YOUR-SSH-PASSWORD"
    hostname: "YOUR-DNS-A-RECORD.example.com"
    network: "YOUR-VCENTER-NETWORK"
    netmask: "255.255.255.0"
    gateway: "10.200.200.1"
    vm_name: "YOUR-VM-NAME"
    memory: "10"
    cpu: "4"
    disk_type: "thin"
    vcenter:
      url: "https://vcsa-01.example.com"
      username: "YOUR-VCENTER-USER"
      password: "YOUR-VCENTER-PASSWORD"
      datastore: "YOUR-VCENTER-DATASTORE"
      datacenter: "YOUR-VCENTER-DATACENTER"
      insecure: "1"
      ca_cert: |
        -----BEGIN CERTIFICATE-----
        MIIE5DCCAsygAwIBAgIBATANBgkqhkiG9w0BAQsFADASMRAwDgYDVQQDDAdmYWtl
        ...
        -----END CERTIFICATE-----
      resource_pool: "YOUR-VCENTER-RESOURCE-POOL"
EOF

