### **🚀 Terraform Commands for AWS**  
Below are the most commonly used **Terraform commands** when working with **AWS infrastructure**.  

---

## **🔹 1. Setup & Initialization**
### **🔹 Install & Configure Terraform**
```sh
terraform -version  # Check Terraform version
terraform --help    # Get help for Terraform commands
```

### **🔹 Initialize Terraform**
```sh
terraform init
```
✔ This **downloads the AWS provider plugins** and initializes Terraform.

---

## **🔹 2. Formatting & Validation**
### **🔹 Format Terraform Code**
```sh
terraform fmt
```
✔ Automatically **formats Terraform files** to maintain clean code.

### **🔹 Validate Configuration**
```sh
terraform validate
```
✔ Checks for **syntax errors** in `.tf` files.

---

## **🔹 3. Terraform Plan & Apply**
### **🔹 Check the Execution Plan**
```sh
terraform plan
```
✔ Shows what Terraform **will create, change, or destroy**.

### **🔹 Apply Changes to AWS**
```sh
terraform apply
```
✔ Creates or updates AWS resources.  
✔ Add `-auto-approve` to **skip confirmation**:
```sh
terraform apply -auto-approve
```

---

## **🔹 4. Destroy Resources**
```sh
terraform destroy
```
✔ **Deletes all** resources created by Terraform.  
✔ Add `-auto-approve` to **skip confirmation**:
```sh
terraform destroy -auto-approve
```

---

## **🔹 5. Manage Terraform State**
### **🔹 Show State Information**
```sh
terraform show
```
✔ Displays the **current state** of resources.

### **🔹 List Resources in State File**
```sh
terraform state list
```
✔ Lists **all resources** managed by Terraform.

### **🔹 Remove a Resource from State**
```sh
terraform state rm aws_instance.my_ec2
```
✔ Removes `my_ec2` instance **without deleting it in AWS**.

### **🔹 Import Existing AWS Resources**
```sh
terraform import aws_instance.my_ec2 i-1234567890abcdef
```
✔ Imports **an existing AWS EC2 instance** into Terraform.

---

## **🔹 6. Terraform Variables**
### **🔹 Pass Variables from CLI**
```sh
terraform apply -var="instance_type=t2.micro"
```

### **🔹 Use a Variable File**
```sh
terraform apply -var-file="vars.tfvars"
```

---

## **🔹 7. Terraform Backend (S3 & DynamoDB)**
### **🔹 Configure S3 as a Remote Backend**
Add this to `backend.tf`:
```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
```
✔ **Stores Terraform state in S3** and locks it using **DynamoDB**.

### **🔹 Initialize the Backend**
```sh
terraform init -reconfigure
```

---

## **🔹 8. Terraform Workspaces (Multi-Environment)**
### **🔹 Create a New Workspace**
```sh
terraform workspace new dev
```

### **🔹 Switch to an Existing Workspace**
```sh
terraform workspace select dev
```

### **🔹 List Workspaces**
```sh
terraform workspace list
```

---

## **🔹 9. Terraform Output**
```sh
terraform output
```
✔ Displays Terraform **output values** after deployment.

---

## **🔹 10. Debugging in Terraform**
### **🔹 Enable Debug Logs**
```sh
TF_LOG=DEBUG terraform apply
```
✔ Shows **detailed logs** for debugging.

---

## **🔥 Summary Table**
| **Command** | **Description** |
|------------|----------------|
| `terraform init` | Initialize Terraform |
| `terraform fmt` | Format Terraform files |
| `terraform validate` | Check configuration for errors |
| `terraform plan` | Show execution plan |
| `terraform apply` | Apply Terraform configuration |
| `terraform destroy` | Delete all resources |
| `terraform state list` | List Terraform-managed resources |
| `terraform import` | Import AWS resources into Terraform |
| `terraform workspace new <name>` | Create a workspace |
| `terraform workspace select <name>` | Switch workspaces |

---

### **🚀 Real-World Use Case Example**
#### **Provision an AWS EC2 Instance with Terraform**
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-EC2"
  }
}
```

📌 **Steps to Deploy:**  
```sh
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```

---

Let me know if you need **Terraform scripts for AWS services like EKS, ECS, RDS, or S3!** 🚀😊