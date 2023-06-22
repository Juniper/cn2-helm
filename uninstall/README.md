How to uninstall

### Download tar.gz
The uninstall.tar.gz can now be downloaded from the Git repo (Path: https://github.com/Juniper/cn2-helm/tree/main/uninstall) and installed anywhere, where Kubernetes cluster is deployed.

#### Untar and cd into uninstall folder: 
```
tar -xvf unintall.tar.gz
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
