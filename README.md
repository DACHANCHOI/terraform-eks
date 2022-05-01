# terraform-eks

### EKS Cluster 생성
1. git clone [https://github.com/DACHANCHOI/terraform-eks.git](https://github.com/DACHANCHOI/terraform-eks.git)
2. terraform.auto.tfvars 수정 (vpc_id, private_subnet_id, azs, default_sg_id)
3. terraform init
4. terraform apply
5. Provisioning이 완료되면 kubeconfig_{CLUSTER_NAME} 파일이 생김
6. eks 연결 cli : aws eks update-kubeconfig --region=ap-northeast-2 --name=dcc --alias=dcc
![image](https://user-images.githubusercontent.com/77256060/166134633-da33acc1-f6bb-49df-890a-3a2eb2d17c2a.png)

### EKS Ingress Controller 생성

![image](https://user-images.githubusercontent.com/77256060/166134638-263f084c-692b-4fb9-a9b7-c942f69665a2.png)

[Welcome](https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.3/)

1. **helm 으로 aws-load-balancer-controller 생성**. 
** git clone https://github.com/DACHANCHOI/k8-cicd-argocd.git. 
** cd aws-load-balancer-controller. 
** vaules-eks.yaml clusterName 수정. 
** make upgrade-ek. 
![image](https://user-images.githubusercontent.com/77256060/166134655-239aef3f-05b3-4f0e-b76e-f8011f3adef2.png)
