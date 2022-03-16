# tf-company-audition

## Description
To deploy: 
    - AKS Cluster:
        - Kubernetes version 1.21.2 
        - Location US East 
        - 3 Linux worker nodes
        - 2 CPUs and 4GB of memory.



    - Ingress Controller and a Nginx application:
        - Helm: https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx/3.36.0

    - Nginx Application:
        - Helm: https://artifacthub.io/packages/helm/bitnami/nginx
        - Allow Ingress ( Hostname: nanxxxx-interview.local )


## Status
    - Can't deploy the AKS cluster ; Could not find matching VM for the newly created account subscription.