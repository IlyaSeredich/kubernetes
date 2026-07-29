@echo off

kubectl apply -f config\secrets.yaml
kubectl apply -f config\configmap.yaml

kubectl apply -f infrastructure\kafka\
kubectl apply -f infrastructure\redis\

kubectl apply -f infrastructure\postgres\auth\
kubectl apply -f infrastructure\postgres\user\
kubectl apply -f infrastructure\postgres\order\
kubectl apply -f infrastructure\postgres\payment\

kubectl apply -f apps\auth\
kubectl apply -f apps\user\
kubectl apply -f apps\order\
kubectl apply -f apps\payment\
kubectl apply -f apps\api-gateway\

kubectl apply -f ingress\

echo Deployment completed.
pause