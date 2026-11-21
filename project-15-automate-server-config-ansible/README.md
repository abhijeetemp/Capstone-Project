# Project 15 - Automate Server Configuration with Ansible

## Objective
Automate the configuration of an Ubuntu server using Ansible.

## Tasks
- Set up an Ansible controller.
- Configure a remote Ubuntu server.
- Install Apache.
- Start and enable Apache.
- Deploy a custom HTML homepage.

## Project Structure

```text
project-15-automate-server-config-ansible/
├── README.md
├── ansible.cfg
├── inventory.ini
├── playbook.yml
└── requirements.txt

## Troubleshooting / Execution Status

The Ansible playbook was executed from the controller.

The target EC2 instance was unreachable over SSH:
- Target IP: 51.20.114.99
- Error: SSH connection timed out on port 22

The target instance was successfully registered as Online in AWS Systems Manager.

The playbook and inventory files are prepared. A successful Ansible playbook run could not be verified because SSH connectivity was unavailable.
