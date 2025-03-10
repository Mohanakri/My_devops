I have thoroughly reviewed your original Git cheat sheet and included all missing commands. Here is the complete and structured Git cheat sheet:  

---

# **Git Cheat Sheet**  

## **1. Git Configuration**  
- Set user name:  
  ```sh
  git config --global user.name "User Name"
  ```
- Set user email:  
  ```sh
  git config --global user.email "email@example.com"
  ```
- Set default editor:  
  ```sh
  git config --global core.editor Vim
  ```
- Check current settings:  
  ```sh
  git config --list
  ```
- Create command shortcuts (alias):  
  ```sh
  git config --global alias.co checkout
  git config --global alias.br branch
  git config --global alias.ci commit
  git config --global alias.st status
  ```

## **2. Starting a Project**  
- Initialize a new repository:  
  ```sh
  git init <Repo Name>
  ```
- Clone a remote repository:  
  ```sh
  git clone <Remote URL>
  ```

## **3. Local Changes**  
- Add a file to staging:  
  ```sh
  git add <File Name>
  ```
- Add all files to staging:  
  ```sh
  git add .
  ```
- Commit changes with a message:  
  ```sh
  git commit -m "Commit Message"
  ```

## **4. Track Changes**  
- Show unstaged changes:  
  ```sh
  git diff
  ```
- Show staged changes:  
  ```sh
  git diff --staged
  ```
- Show committed changes:  
  ```sh
  git diff HEAD
  ```
- Show changes between two commits:  
  ```sh
  git diff <Commit1> <Commit2>
  ```
- Compare changes between branches:  
  ```sh
  git diff <Branch1> <Branch2>
  ```
- Show current repository status:  
  ```sh
  git status
  ```
- Show details of a commit:  
  ```sh
  git show <Commit Hash>
  ```

## **5. Commit History**  
- Show commit history:  
  ```sh
  git log
  ```
- Show one-line commit history:  
  ```sh
  git log --oneline
  ```
- Show modified files in commits:  
  ```sh
  git log --stat
  ```
- Show changes in each commit:  
  ```sh
  git log -p
  ```
- Show who modified each line of a file:  
  ```sh
  git blame <File Name>
  ```

## **6. Ignoring Files**  
- Create `.gitignore`:  
  ```sh
  touch .gitignore
  ```
- List ignored files:  
  ```sh
  git ls-files -i --exclude-standard
  ```

## **7. Branching**  
- Create a new branch:  
  ```sh
  git branch <Branch Name>
  ```
- List branches:  
  ```sh
  git branch --list
  ```
- Delete a branch:  
  ```sh
  git branch -d <Branch Name>
  ```
- Delete a remote branch:  
  ```sh
  git push origin --delete <Branch Name>
  ```
- Rename a branch:  
  ```sh
  git branch -m <Old Name> <New Name>
  ```

## **8. Switching & Stashing**  
- Switch branches:  
  ```sh
  git checkout <Branch Name>
  ```
- Create and switch to a branch:  
  ```sh
  git checkout -b <Branch Name>
  ```
- Stash uncommitted changes:  
  ```sh
  git stash
  ```
- Save stash with a message:  
  ```sh
  git stash save "Message"
  ```
- List stashes:  
  ```sh
  git stash list
  ```
- Apply the latest stash:  
  ```sh
  git stash apply
  ```
- Apply and delete the latest stash:  
  ```sh
  git stash pop
  ```
- Delete a stash:  
  ```sh
  git stash drop
  ```
- Delete all stashes:  
  ```sh
  git stash clear
  ```
- Create a branch from a stash:  
  ```sh
  git stash branch <Branch Name>
  ```

## **9. Merging & Rebasing**  
- Merge a branch into the current branch:  
  ```sh
  git merge <Branch Name>
  ```
- Merge a specific commit:  
  ```sh
  git merge <Commit Hash>
  ```
- Rebase a branch:  
  ```sh
  git rebase <Branch Name>
  ```
- Continue rebase after conflict resolution:  
  ```sh
  git rebase --continue
  ```
- Skip a commit during rebase:  
  ```sh
  git rebase --skip
  ```
- Abort rebase:  
  ```sh
  git rebase --abort
  ```
- Interactive rebase:  
  ```sh
  git rebase -i
  ```

## **10. Remote Repositories**  
- Show remote repositories:  
  ```sh
  git remote -v
  ```
- Add a remote repository:  
  ```sh
  git remote add origin <Remote URL>
  ```
- Fetch updates from a remote repository:  
  ```sh
  git fetch <Remote>
  ```
- Remove a remote repository:  
  ```sh
  git remote rm <Remote Name>
  ```
- Rename a remote repository:  
  ```sh
  git remote rename <Old Name> <New Name>
  ```
- Change remote URL:  
  ```sh
  git remote set-url origin <New URL>
  ```

## **11. Pushing & Pulling**  
- Push changes to remote:  
  ```sh
  git push origin <Branch Name>
  ```
- Force push changes:  
  ```sh
  git push origin <Branch Name> -f
  ```
- Pull latest changes:  
  ```sh
  git pull origin <Branch Name>
  ```
- Fetch remote repository:  
  ```sh
  git fetch <Remote>
  ```
- Fetch all branches:  
  ```sh
  git fetch --all
  ```

## **12. Undo Changes**  
- Revert last commit (keep changes):  
  ```sh
  git reset --soft HEAD~1
  ```
- Revert last commit (discard changes):  
  ```sh
  git reset --hard HEAD~1
  ```
- Revert a specific commit:  
  ```sh
  git revert <Commit Hash>
  ```

## **13. Removing Files**  
- Remove a file from Git and system:  
  ```sh
  git rm <File Name>
  ```
- Remove a file from Git but keep it locally:  
  ```sh
  git rm --cached <File Name>
  ```

---

This version includes all missing commands and is formatted for clarity. Let me know if you need any modifications! 🚀
