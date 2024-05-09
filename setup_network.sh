#!/bin/bash

# Prompt for network configuration inputs
read -p "Enter the IP address (e.g., 10.90.0.75): " IP_ADDRESS
read -p "Enter the subnet mask in CIDR format (e.g., 24 for 255.255.255.0): " SUBNET_MASK
read -p "Enter the gateway (e.g., 10.90.0.1): " GATEWAY
read -p "Enter DNS servers (comma-separated, e.g., 10.90.0.1,10.90.0.252): " DNS_SERVERS

# Define the connection name
CONNECTION_NAME="ens192"

# Set static IP address and subnet mask
nmcli con mod "$CONNECTION_NAME" ipv4.addresses "$IP_ADDRESS/$SUBNET_MASK"

# Set the gateway
nmcli con mod "$CONNECTION_NAME" ipv4.gateway "$GATEWAY"

# Set DNS servers
nmcli con mod "$CONNECTION_NAME" ipv4.dns "$DNS_SERVERS"

# Set the connection method to manual
nmcli con mod "$CONNECTION_NAME" ipv4.method manual

# Set the connection to autoconnect at boot
nmcli con mod "$CONNECTION_NAME" connection.autoconnect yes

# Restart the network interface to apply changes
nmcli con down "$CONNECTION_NAME" && nmcli con up "$CONNECTION_NAME"

echo "Network settings have been updated for $CONNECTION_NAME."
