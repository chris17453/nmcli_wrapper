# Network Configuration Script
This script allows you to set up the IP address, subnet mask, gateway, and DNS for a specific network interface on a linux system using `nmcli`.

## Prerequisites

- The system must have `nmcli` installed and operational.
- The user running the script must have sudo privileges to modify network settings.

## Getting Started

These instructions will guide you on how to execute the script to configure your network interface.

### Installation

1. Download or copy the script onto your CentOS 9 system.
2. Make the script executable:
   ```bash
   chmod +x set_network.sh
   ```

### Usage

Run the script by following these steps:

1. Execute the script with sudo privileges:
   ```bash
   sudo ./set_network.sh
   ```

2. You will be prompted to enter the following details:
   - **IP address**: The static IP address you wish to assign to the interface.
   - **Subnet mask**: The CIDR notation of the subnet mask (e.g., `24` for `255.255.255.0`).
   - **Gateway**: The default gateway IP address.
   - **DNS servers**: The IP addresses of the DNS servers, comma-separated (e.g., `10.90.0.1,10.90.0.252`).

3. After entering the required information, the script will configure the network settings and restart the network interface to apply changes.

### Important Notes

- Ensure that the network interface name (`ens192` in the script) matches the actual interface you intend to configure. You can find all available network interfaces by running `nmcli device status`.
- Incorrect settings may result in loss of network connectivity. Ensure the details entered are correct for your network environment.

## Support

For issues and inquiries, contact your system administrator or consult the [nmcli documentation](https://developer.gnome.org/NetworkManager/stable/nmcli.html).


