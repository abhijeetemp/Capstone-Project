# Project 14 - App Deployment using EKS

## Objective
Deploy a Docker application to Amazon EKS and expose it publicly using a Kubernetes LoadBalancer Service.

## Infrastructure
- AWS Region: eu-north-1
- EKS Cluster: capstone-project-14
- Managed Node Group: capstone-workers
- Instance Type: t3.small
- Nodes: 1
- Container Image: 590507089733.dkr.ecr.eu-north-1.amazonaws.com/capstone-project-13:latest

## Deployment

### Update kubeconfig
```bash
aws eks update-kubeconfig --region eu-north-1 --name capstone-project-14
