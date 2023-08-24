# boundary-webinar_platform-hcp

This repo contains the initial platform resources (HCP Vault and HCP Boundary) for the Boundary webinar. 

The final workload/demo is stacked upon 3 layers.

1st layer provides the required **platform** environment

2nd layer provides and configure the required **platform/services**

3rd layer provides the the final **workload** and consumes the underlying platform/services

This methodology is alligned with the so called platform engineering approach. It's highly scalable and secure by its segregation of duty approach. An application team is able to maintain their code base without affecting any other platform or platform/service. Even a shared platform like Vault is usually hosting many platform/services for many different workloads. We lower the risk of an outage through fine grained access control and thus limiting the blast radius.       

