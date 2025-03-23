# Merge two repositories into a new repo as subdirectories. (retaining commit histories)

1. **Reset your repository** to start fresh (if you don’t have other work in progress):
   ```bash
   git init
   git commit --allow-empty -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/omkar-334/agri-ml
   ```

2. **Add and Fetch the Remote Repositories**
   ```bash
   git remote add maianet https://github.com/omkar-334/MAIAnet-multiattention-IBN-anti-aliasing-neural-network.git
   git fetch maianet

   git remote add tswin https://github.com/omkar-334/Tswin-F-optimized.git
   git fetch tswin
   ```

3. **Add Them as Subtrees (Without Squashing)**
   ```bash
   git subtree add --prefix=MAIAnet maianet main
   git subtree add --prefix=Tswin tswin main
   ```

4. **Verify Commit History**
   ```bash
   git log --oneline --graph --all --decorate
   ```
   This should now display the **full commit history** from both repositories.

5. **Push to GitHub**
   ```bash
   git push origin main
   ```

---

### **What Changes?**
✅ Instead of **squashed** commits, you'll now see the **original commits** from both repositories.  
✅ The structure remains the same (`MAIAnet/` and `Tswin/` inside `agri-ml`).  
✅ You keep full commit history **with individual commit details**.

Let me know if you need further clarification! 🚀
