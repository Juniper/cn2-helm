#!/bin/bash
kubectl delete -f contrail.yaml
kubectl delete gvc default-global-vrouter-config
kubectl delete gsc default-global-system-config
kubectl delete -f contrail_system.yaml
kubectl delete -f deployer.yaml
kubectl delete -f configplane.juniper.net_apiservers.yaml
kubectl delete -f controlplane.juniper.net_controls.yaml
kubectl delete -f configplane.juniper.net_controllers.yaml
kubectl delete -f configplane.juniper.net_kubemanagers.yaml
kubectl delete -f dataplane.juniper.net_vrouters.yaml
kubectl delete -f k8s.cni.cncf.io_network-attachment-definitions.yaml
