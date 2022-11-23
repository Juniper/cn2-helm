How to uninstall
### Single Step
#### cd to uninstall
```
./uninstall.sh
```
### Multi Step
#### cd to uninstall
```
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
```

#### cd into uninstall folder: 
```
cd uninstall  
```

#### Run the uninstall script: 
```
./uninstall.sh 
```

### Current limitations of our uninstall
1. Cannot uninstall the custom resources modularly
2. Cannot uninstall resources that are created after the deployment unless they belong to the known namespaces (contrail, contrail-deploy, contrail-k8s-kubemanager-mk-default-project)

### NOTE on error
When uninstalling on a distributed cluster, the following error messages can occur:
  no matches for kind "GlobalVrouterConfig" in version "core.contrail.juniper.net/v1alpha1";
  no matches for kind "GlobalSystemConfig" in version "core.contrail.juniper.net/v1alpha1"
This can be ignored.
