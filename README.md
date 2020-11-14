## Docker Kubernetes Deno


### Docker Image
```
docker build . -f .\deno.dockerfile -t jayvirrathi/deno:1.5.2-buster-slim

docker push jayvirrathi/deno:1.5.2-buster-slim

docker build . -f .\dockerfile -t jayvirrathi/deno-app:v1

docker run -it --rm -p 5000:5000 jayvirrathi/deno-app:v1

docker push jayvirrathi/nodejs:v1
```

### Kubernetes cmd
```
kubectl create ns deno-app

kubectl apply -n deno-app -f .\deployment\

kubectl -n deno-app get svc
```


### Kubernetes cmd for Debugging
```
kubectl get ns

kubectl -n deno-app get deploy

kubectl -n deno-app get pods

kubectl -n deno-app get logs podname
```



