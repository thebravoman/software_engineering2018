# Creating a git repo and pushing to github

echo "# software_engineering2018" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/thebravoman/software_engineering2018.git
git push -u origin master

