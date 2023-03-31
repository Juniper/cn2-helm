# Welcome to the repository for CN2 Helm

These contents supplement the product itself with some open source CN2 deployers, guides, and configuration examples

In order to make use of this, you'll need access to the Juniper Networks [CN2 product](https://www.juniper.net/us/en/products/sdn-and-orchestration/contrail/cloud-native-contrail-networking.html) as a customer or [free trial](https://www.juniper.net/us/en/forms/cn2-free-trial.html) user.

## Deploying CN2 on AWS EKS using helm

## Install helm3

Download and install latest version of helm3:

```sh
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```

## Add Helm Repo
```sh
helm repo add cn2 https://juniper.github.io/cn2-helm/
```

## Install cn2-helm chart for AWS EKS
```sh
helm install cn2eks cn2/cn2-eks --set imagePullSecret="<provide base64 imagepullsecret for enterprise-hub.juniper.net here>"
```

## Getting Started 

The guides you'll find here supplement the [Juniper CN2 documentation](https://www.juniper.net/documentation/product/us/en/cloud-native-contrail-networking/). If you're new to Kubernetes, you may want to try the simplest deployment using [CN2 with minikube](https://github.com/Juniper/contrail-networking/tree/main/minikube). If you're more seasoned with Kubernetes, then you can find the right deployer here and install CN2 into your multi-node cluster or even a multi-cluster setup.

## Getting Support

Juniper customers can get support as usual through JTAC, but paid and free-trial users alike, and anyone with questions can drop by the Juniper Elevate [community for CN2](https://community.juniper.net/answers/communities/community-home?communitykey=33a620e9-dd0e-4df4-ba5c-200cbf73b292).
