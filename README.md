# terraform-eks

### EKS Cluster 생성

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2e31e9ed-934d-4018-b74d-4f9682de097b/Untitled.png)

- EKS Provisioning using Terraform
- Provisioning이 완료되면 kubeconfig_{CLUSTER_NAME} 파일이 생김
- eks 연결 cli : aws eks update-kubeconfig --region=ap-northeast-2 --name=dcc --alias=dcc
