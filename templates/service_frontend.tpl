---
apiVersion: "v1"
kind: "Service"
metadata:
  name: "nginx-1"
  namespace: "default"
  labels:
    app: "nginx-1"
spec:
  ports:
  - protocol: "TCP"
    port: 80
  selector:
    name: "nginx-1"
  type: "LoadBalancer"
  loadBalancerIP: "${lb}"

