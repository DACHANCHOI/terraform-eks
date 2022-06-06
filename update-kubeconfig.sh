CLUSTER_NAME=dcc

aws eks update-kubeconfig --region ap-northeast-2 --name $CLUSTER_NAME --alias $CLUSTER_NAME
kubectx $CLUSTER_NAME