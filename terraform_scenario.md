### **🚀 Terraform Scenario-Based Interview Questions & Answers for DevOps**  

These **real-world Terraform scenarios** will test your understanding of **AWS infrastructure automation**.  

---

## **🔹 Basic Terraform Scenarios**  

### **1️⃣ Scenario: You want to initialize Terraform in a project. What should you do?**  
**Question:** What command do you use to initialize a new Terraform project and why?  

✅ **Answer:**  
Use:
```sh
terraform init
```
- This **downloads required provider plugins** (e.g., AWS, Azure, GCP).  
- Initializes the **backend for remote state storage** (if configured).  
- Sets up the **Terraform working directory**.  

---

### **2️⃣ Scenario: You want to check for syntax errors before applying Terraform changes.**  
**Question:** How do you verify that your Terraform code is correct before deploying?  

✅ **Answer:**  
Run:
```sh
terraform validate
```
- It **checks for syntax errors** in `.tf` files.  
- Ensures Terraform configuration is **valid**.  

---

### **3️⃣ Scenario: You need to see what changes Terraform will make before applying.**  
**Question:** How can you preview the infrastructure changes Terraform will make?  

✅ **Answer:**  
Use:
```sh
terraform plan
```
- Shows a **detailed execution plan**.  
- Helps **review resource changes** before applying.  
- Prevents unintended deletions or modifications.  

---

## **🔹 Terraform State & Backend Scenarios**  

### **4️⃣ Scenario: Two DevOps engineers are working on the same Terraform project. How do you prevent state file conflicts?**  
**Question:** What is the best way to manage Terraform state in a team?  

✅ **Answer:**  
Use **Remote State with S3 and DynamoDB locking**:  
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
- **S3 stores the state file** to enable collaboration.  
- **DynamoDB locks** prevent simultaneous updates.  

---

### **5️⃣ Scenario: You applied Terraform changes but forgot to commit the `.tfstate` file. What will happen?**  
**Question:** What problems can occur if the `.tfstate` file is missing?  

✅ **Answer:**  
- Terraform **won’t know the current infrastructure state**.  
- Running `terraform apply` may **create duplicate resources**.  
- If the state is stored remotely (**S3/DynamoDB**), use:
  ```sh
  terraform init
  ```

---

## **🔹 Terraform Resource Management Scenarios**  

### **6️⃣ Scenario: You need to delete a specific resource from Terraform without deleting everything.**  
**Question:** How do you remove a single AWS resource without affecting others?  

✅ **Answer:**  
Use:
```sh
terraform state rm aws_instance.my_ec2
```
- Removes `my_ec2` **from Terraform state**, but **does NOT delete** it from AWS.  

If you want to **delete it from AWS too**, use:  
```sh
terraform destroy -target="aws_instance.my_ec2"
```
✔ This deletes only `my_ec2` **without affecting other resources**.  

---

### **7️⃣ Scenario: An AWS EC2 instance was manually deleted. How do you fix Terraform state?**  
**Question:** How can you sync Terraform state with AWS when a resource is deleted manually?  

✅ **Answer:**  
Run:
```sh
terraform refresh
```
✔ This updates the Terraform state file with the **latest infrastructure changes**.  

If Terraform still thinks the resource exists, use:
```sh
terraform apply
```
✔ Terraform will **recreate the missing EC2 instance**.  

---

### **8️⃣ Scenario: You need to import an existing AWS resource into Terraform.**  
**Question:** How do you import an EC2 instance that was created manually?  

✅ **Answer:**  
Use:
```sh
terraform import aws_instance.my_ec2 i-1234567890abcdef
```
✔ This imports the **existing EC2 instance** into Terraform state.  

Next, run:
```sh
terraform plan
```
✔ This will show any **differences between the real instance and your Terraform code**.  

---

## **🔹 Terraform Workspaces & Environment Scenarios**  

### **9️⃣ Scenario: You want to deploy separate environments (dev, staging, production) with the same Terraform code.**  
**Question:** What is the best way to manage multiple environments in Terraform?  

✅ **Answer:**  
Use **Terraform Workspaces**:  
```sh
terraform workspace new dev
terraform workspace select dev
```
✔ Each workspace **maintains a separate Terraform state**, making it easy to manage different environments.  

---

## **🔹 Terraform Modules & Reusability Scenarios**  

### **🔟 Scenario: You need to reuse Terraform code across multiple projects. How do you do this?**  
**Question:** How can you write reusable Terraform configurations?  

✅ **Answer:**  
Use **Terraform Modules**. Example:  

📌 **Create a module for EC2 (`modules/ec2/main.tf`)**  
```hcl
variable "instance_type" {}

resource "aws_instance" "ec2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
}
```

📌 **Use the module in `main.tf`**  
```hcl
module "web" {
  source        = "./modules/ec2"
  instance_type = "t2.micro"
}
```
✔ This **keeps your Terraform code modular and reusable**.  

---

## **🔹 Terraform Security & Best Practices**  

### **1️⃣1️⃣ Scenario: You committed your AWS credentials to Git. What should you do?**  
**Question:** How do you remove sensitive credentials from Git history?  

✅ **Answer:**  
1. **Remove the file from Git history**:
   ```sh
   git filter-repo --path credentials.tfvars --invert-paths
   ```
2. **Force push the cleaned repo**:
   ```sh
   git push origin --force
   ```
3. **Use environment variables instead of storing credentials in code**:
   ```sh
   export AWS_ACCESS_KEY_ID="your-access-key"
   export AWS_SECRET_ACCESS_KEY="your-secret-key"
   ```

---

### **1️⃣2️⃣ Scenario: You need to apply Terraform changes only after getting approval.**  
**Question:** How do you require manual approval before applying changes in GitHub Actions?  

✅ **Answer:**  
Use **GitHub Actions with manual approval**:  
```yaml
jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - name: Terraform Plan
        run: terraform plan -out=tfplan

      - name: Require Approval
        uses: hmarr/auto-approve-action@v2
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}

      - name: Terraform Apply
        run: terraform apply tfplan
```
✔ This **waits for approval before applying changes**.

---

## **🔥 Quick Summary**
| **Scenario** | **Solution** |
|-------------|-------------|
| Initialize Terraform | `terraform init` |
| Check syntax errors | `terraform validate` |
| Preview changes | `terraform plan` |
| Apply changes | `terraform apply` |
| Store Terraform state remotely | Use **S3 + DynamoDB** backend |
| Remove a specific resource | `terraform state rm` or `terraform destroy -target` |
| Sync Terraform state | `terraform refresh` |
| Import AWS resources | `terraform import` |
| Manage multiple environments | `terraform workspace new dev` |
| Reuse Terraform code | Use **Modules** |
| Remove secrets from Git | `git filter-repo --path credentials.tfvars --invert-paths` |
| Require approval before applying | Use **GitHub Actions with manual approval** |

---

### **🚀 Final Tips for DevOps Interviews**
- Explain **real-world use cases** where you used Terraform in projects.  
- Talk about **challenges faced and how you resolved them**.  
- Demonstrate knowledge of **Terraform best practices** like **state management, workspaces, and security**.  

Would you like **more Terraform DevOps scenarios**? Let me know! 😊 🚀