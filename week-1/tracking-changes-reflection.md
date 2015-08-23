## Tracking Changes Reflection

1. How does tracking and adding changes make developers' lives easier?
2. What is a commit?
3. What are the best practices for commit messages?
4. What does the HEAD^ argument mean?
5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
6. Write a handy cheatsheet of the commands you need to commit your changes?
7. What is a pull request and how do you create and merge one?
8. Why are pull requests preferred when working with teams?




1. How does tracking and adding changes make developers' lives easier?
  - If a change did not work or you want to return to an earlier version, you can track the change, find it, and work before it. Adding changes allows all of this to be possble.

2. What is a commit?
  - A commit is a change that has been added to a branch. Each commit is logged in "git log" so you can track everything that has happened.

3. What are the best practices for commit messages?
  - A short top line similar to an email subject line, written in the imperative. This line should consisely summarize all changes made.
  - If necessary a body that goes into more detail.

4. What does the HEAD^ argument mean?
  -HEAD^ is the previous commit.

5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
  - Once changes are made, those files become the first stage - "untracked". Once you add it with "git add" it becomes staged. Then when you commit it with "git commit" it becomes committed! BONUS: Upon creating a pull request and confirming it, the change is merged.

6. Write a handy cheatsheet of the commands you need to commit your changes?
  - git co -b new-branch-name (create a branch)
  - make changes
  - git status
  - git add . (or the specific file name)
  - git status
  - git commit -m "message"
  - git log
  - git co master
  - git pull
  - git co new-branch-name
  - git merge master
  - git push origin new-branch-name
  - navigate to github
  - click pull request
  - confirm merge


7. What is a pull request and how do you create and merge one?
  - A pull request is a request to merge your changes from your new branch to the master. You create one by pushing your changes with "git push origin (new-branch-name)" and merge it by navigating to github, clicking "pull requsts", and confirming the merge.

8. Why are pull requests preferred when working with teams?
  - Other team members can approve your changes or at least see what you're doing. Basically you're saying, "I made changes, may I add it to the master?" so that everyone knows what's going on.