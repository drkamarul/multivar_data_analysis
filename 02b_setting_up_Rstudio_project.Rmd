# RStudio Project

In this chapter, we will guide readers to have a similar folder and file structure. This will help readers to run the codes with minimal risk for errors. And we do this by creating RStudio Project. 

From the RStudio Project webpage https://support.rstudio.com/hc/en-us/articles/200526207-Using-RStudio-Projects , it says that RStudio projects make it straightforward to divide your work into multiple contexts, each with their own working directory, workspace, history, and source documents.RStudio projects are associated with R working directories. You can create an RStudio project:

- on RStudio Cloud or RStudio on your local machine
- In a brand new directory
- In an existing directory where you already have R code and data
- By cloning a version control (Git or Subversion) repository

## Objectives

The objectives of the chapters are

- to share the link for the dataset repository on GitHub
- to teach readers to create a RStudio Cloud project based on the dataset repository on GitHub
- to teach readers to create a RStudio project on local machine based on the dataset repository on GitHub

## Dataset repository on GitHub

We will use the our book repository on GitHub. The repository is `data-for-RMed`. To go to the repository, click on this link 

![Dataset Repository on GitHub](5clonegit.png)


## RStudio project on RStudio Cloud

Head to RStudio Cloud page

![RStudio Cloud](1login.png)
Login to RStudio Cloud using your credentials

![RStudio Cloud login page](2login.png)
Once inside your workspace, click New Project

![Rstudio Cloud, Workspace and New Project](3newproject.png)

And click on `New Project from Git Repository`

![New Project from Git Repository](4newprojectfromgit.png)

You will got back to our `data-for-RMed` repository on GitHub. And you will click on `Clone` and click the copy button for HTTPS

![Clone Git Repository to RStudio Cloud](5clonegit.png) 

Next, we will clone the repository on our RStudio Cloud. This will ensure the file structure is the same with that of on the RStudio Cloud. Following that, just click OK.

![Clone the GitHub repository on RStudio Cloud project](6paste_url_git.png)

A new Rstudio Cloud project will be created.

![A new RStudio Cloud Project](7rstudiocloud.png)

## RStudio project on local machine

If you want to create a new project on your local machine using the same GitHub repository, then follow these steps.

First, open the RStudio.

![RStudio on Your Machine](11openrstudio.png)

On the menu, click `File`, then click `New Project`

![New Project](12newproject.png) 



Then click `Project` and then `Version Control`

![New Project and Version Control](13newproject.png)

and then click `Git`

![Git](14git.png)

And remember the HTTPS that we have copied from our `dataset-for-RMed` GitHub repository

![Copy the HTTPS from GitHub](15copyurlgit.png)
Now, 

- paste the HTTPS link 
- the Project directory name will be automatically filled
- Click on `Browse`, and you may choose whichever folder that you prefer. We recommend you to use home directory (such as `Documents`)

![Clone Git Repository](16clonegit.png)

And now RStudio will create a new working directory on your local machine. This working directory contains the same folder and file structures with the GitHub repository

![RStudio Project](17rstudio.png)

