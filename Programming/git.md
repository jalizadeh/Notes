# Github



## What is Github:

1. publishing tool
2. version control system
3. collaboration platform
4. a web-based hosted serveice for Git repositories
5. open source
6. Allows you to hos remote Git repositories, and has wealth of community-based serveices that make it ideal for open projects


## Any help needed:
[https://help.github.com/](https://help.github.com/)


## Version control Software:
1. Track changes to projects over time
2. This allows you to track progress  to revert to eaarlier versions
3. They can help prevent you form losing work and keeping this organized


## How Git Works:
1. Taking snapshots also known as "commit"
2. Working directory
3. Changes are kept in "Stagin Area"
4. States
	1. Unmodified 	(black)
	2. Modified		(green)
	3. Staged		()

5. Branching:
	1. each project has a "Master" branch
	2. Taking every commit and making branch of it
	3. changes in other branches, never affect the master branch



## Configure Git:
	(open cmd)
	git config --global user.name "YOUR.GITHUB.USERNAME"
	git config --global user.email  "XXX@XXX.com"
	git config --global credential.helper "manager"

	git config --list




## First Repository:
	(open cmd) 
	make a folder & go inside it
 
	git init				 // to initialize an empty repository

	git status 				 // current branch and status

	git add <filename>			// to add a single file
	git add *.<extension>		// add files by their extension
	git add . 					// add everything 
	
	git commit 				// commit all changes
							// Note: inside bash lines of information appear that can be changed and you can add / delete details. Don`t close it manually, but press "Esc" and write ":wq", then press "Enter"
	git commit -m "msg..." 	// commit with a message	

	git diff 						// shows changes

## Add a Repository:
If you have initiated your repository locally and now want to put it in a repository on Github, [follow this](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)



## Get differences:
	git diff



## Branching:
	git branch							//list of branches

	git branch <branch_name>			//create a branch

	git checkout <branch_name>			//switch to branch

	git checkout -b <branch_name>		//create & switch

	git branch -d <branch_name>			//delete a branch

	git branch -D <branch_name>			//delete a branch with force




## Merge:
	// 1. go to the main branch
	// 2. merge main branch with <branch_name>
	
	git merge <branch_name>

	git branch --merged			// which branches are merged