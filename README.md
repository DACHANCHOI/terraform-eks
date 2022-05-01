# terraform-eks

### EKS Cluster 생성

![Untitled](https://user-images.githubusercontent.com/77256060/166134506-f80168c3-4651-4b61-b392-54b8dac6e7ba.png)

- EKS Provisioning using Terraform
- Provisioning이 완료되면 kubeconfig_{CLUSTER_NAME} 파일이 생김
- eks 연결 cli : aws eks update-kubeconfig --region=ap-northeast-2 --name=dcc --alias=dcc
