This repository creates individual GCP components as terraform modules in "modules directory"

Stacks directory is used to create "deployment stacks".
* Cloud Run

`This deploys components needed to build e2e devops pipeline for cloud run. Source Rep, Container Registry,  IAM roles and permissions, Serverless connector ` 
* GKE
`This deploys components needed to build GKE cluster like VPC, various subnets, cluster, node pools , service accounts `

` This is described in blog oiver [here](https://www.kamalsblog.com/2022/04/All-About-GKE.html)

Readme for stacks and modules are included in each directory.