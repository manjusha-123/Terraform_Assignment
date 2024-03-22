## Assignments Description
 ### 1. AKS Cluster Creation
Create a AKS cluster with Azure Scale Set enabled . Store the state file in cloud storage ( for 2 envs like dev, qa)
 #### Instructions- 
Create Reusable terraform modules. Code for creating AKS and its components. Should able to use the same code for creating a AKS cluster with different configurations. Use variable for passing input
### 2. Create a stack of resources ADF, Databricks, ADLS, Azure SQL DB
Databricks workspaces , Vnet, IAM role, Resource group, Data sources, Azure Data Factory Linked Service, azure-key-vault, Service Principal , Storage Account, Security Group etc.
### Solutions
- Created a aks module which is in the modules folder
- created two environments named as 'dev' and 'qa' which uses aks module to create a Azure Kubernetes Cluster in the Cloud
- To store the state file in cloud storage :
-        Created the storage account and container in the azure cloud
         And configure the provider.tf in the above created environments 'dev' and 'qa' to store the respective state file in cloud
- Created terraform.tfvars file in respective environments to pass the inputs through variables
- And after creating all the required files ,save all the files and run the terraform init,plan,apply commands in both the environments to create all the resources
