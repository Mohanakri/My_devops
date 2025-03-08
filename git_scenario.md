### **🚀 Real-World Git Interview Questions for DevOps Engineers**  
These **scenario-based** Git questions are commonly asked in **DevOps interviews** to test practical knowledge.  

---

## **🛠 Git Basics & Workflow Scenarios**  
### **1️⃣ You committed sensitive credentials by mistake. How do you remove them?**  
**Scenario:** You accidentally committed AWS credentials to your Git repo. How do you **permanently remove them from history**?  

🔹 **Solution:**  
- Use `git filter-repo` (recommended) or `git rebase` to remove sensitive data.  
- Example using `filter-repo`:
  ```sh
  git filter-repo --path sensitive_file.txt --invert-paths
  git push --force origin main
  ```
- If using `rebase`:  
  ```sh
  git rebase -i HEAD~5  # Edit the commit that contains the credentials
  git push --force origin main
  ```
- **Use GitHub/GitLab security scans** to prevent this in the future.

---

### **2️⃣ You committed a change to the wrong branch. How do you move it to the correct branch?**  
**Scenario:** You accidentally committed a feature to `main` instead of `feature-branch`.  

🔹 **Solution:**  
```sh
# Create a new branch and move the commit
git branch feature-branch
git reset --hard HEAD~1  # Remove commit from main
git checkout feature-branch
git cherry-pick <commit-hash>  # Move commit to correct branch
```

---

### **3️⃣ How do you squash multiple commits into a single commit before pushing?**  
**Scenario:** Your pull request has **10 messy commits**, but you need to squash them into one.  

🔹 **Solution:**  
```sh
git rebase -i HEAD~10
```
- Mark the **first commit** as `pick` and the rest as `squash (s)`.  
- Save and exit, then force-push:  
  ```sh
  git push --force origin feature-branch
  ```

---

### **4️⃣ How do you resolve a merge conflict in Git?**  
**Scenario:** You’re merging `feature-branch` into `main`, but a conflict occurs in `app.py`.  

🔹 **Solution:**  
1. Check conflicting files:  
   ```sh
   git status
   ```
2. Open the file, **manually resolve the conflict**, and save it.  
3. Stage the resolved file:  
   ```sh
   git add app.py
   ```
4. Complete the merge:  
   ```sh
   git commit -m "Resolved merge conflict in app.py"
   ```

---

## **🔄 Git Reset, Revert, and Recovery Scenarios**  
### **5️⃣ What is the difference between `git reset`, `git revert`, and `git checkout`?**
| Command | Use Case |
|---------|---------|
| `git reset --hard HEAD~1` | Removes commit and all changes permanently |
| `git reset --soft HEAD~1` | Removes commit but keeps changes staged |
| `git revert <commit>` | Creates a new commit that undoes the changes |
| `git checkout <branch>` | Switches to a different branch |

🔹 **Scenario:** You deployed a buggy commit to production. How do you undo it without losing history?  
**Solution:** Use `git revert`:  
```sh
git revert <commit-hash>
git push origin main
```
✅ This keeps the commit history clean.

---

### **6️⃣ How do you recover a deleted branch?**  
**Scenario:** You accidentally deleted `feature-branch`.  

🔹 **Solution:**  
1. Find the branch reference:  
   ```sh
   git reflog
   ```
2. Restore the branch:  
   ```sh
   git checkout -b feature-branch <commit-hash>
   ```

---

## **🚀 Advanced Git Scenarios for DevOps**  
### **7️⃣ How do you clone a specific branch instead of the whole repo?**  
🔹 **Solution:**  
```sh
git clone -b feature-branch --single-branch <repo-url>
```

---

### **8️⃣ How do you track a remote branch locally?**  
**Scenario:** A new branch `staging` exists remotely, but not locally.  

🔹 **Solution:**  
```sh
git fetch origin
git checkout -b staging origin/staging
```

---

### **9️⃣ How do you set up Git in a CI/CD pipeline (GitHub Actions, Jenkins)?**  
**Scenario:** You want to automate testing and deployment when code is pushed.  

🔹 **Solution (GitHub Actions example):**
```yaml
name: CI/CD Pipeline
on: push
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2
      - name: Setup Terraform
        run: terraform init
      - name: Terraform Plan
        run: terraform plan
```

---

### **🔹 Bonus DevOps Git Scenarios**
- **How do you handle large files in Git?** → Use `.gitignore` or `Git LFS`.  
- **How do you roll back a Git tag?** → `git tag -d <tag>` and `git push origin :refs/tags/<tag>`.  
- **How do you fetch only the latest commit to speed up cloning?** → `git clone --depth=1 <repo-url>`.  

---

### **🔥 Summary Table**
| Scenario | Solution |
|----------|----------|
| Remove sensitive data from Git history | `git filter-repo` / `git rebase` |
| Move commit to the correct branch | `git cherry-pick` |
| Squash commits before merging | `git rebase -i HEAD~N` |
| Resolve merge conflicts | Manually edit, `git add`, `git commit` |
| Undo a deployed commit | `git revert <commit>` |
| Restore deleted branch | `git reflog` & `git checkout -b` |
| Clone a specific branch | `git clone -b <branch> --single-branch` |
| Automate Git in CI/CD | GitHub Actions or Jenkins pipeline |

---

### **💡 Pro Tip for Interviews:**  
- Use real-world DevOps experience when answering Git questions.  
- Mention how you **collaborate with teams using Git workflows (GitFlow, trunk-based development, etc.)**.  

Let me know if you want **more in-depth DevOps Git questions**! 🚀😊