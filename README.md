# terraform-eks

### EKS Cluster 생성
1. git clone [https://github.com/DACHANCHOI/terraform-eks.git](https://github.com/DACHANCHOI/terraform-eks.git)
2. terraform.auto.tfvars 수정 (vpc_id, private_subnet_id, azs, default_sg_id)
3. terraform init
4. terraform apply
5. Provisioning이 완료되면 kubeconfig_{CLUSTER_NAME} 파일이 생김
6. eks 연결 cli : aws eks update-kubeconfig --region=ap-northeast-2 --name=dcc --alias=dcc
