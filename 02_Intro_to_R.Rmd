\mainmatter

# Introduction to R, RStudio and RStudio Cloud

In this chapter, we would like to achieve these objectives: 

1. To introduce R
2. To introduce RStudio
2. To introduce RStudio Cloud. This is a platform where we can run RStudio on the cloud
3. To guide to install R in your local machine 
4. To guide to install RStudio in your local machine 
5. To show readers to install optional; latex editor (Miktex or Texlive and MacTex)
6. To demonstrate to readers how R scripts work
7. To describe R packages and R Taskview 

## RStudio Cloud

RStudio cloud facilitates the learning of R. Anyone can sign up and start using RStudio on the cloud.It is one of the the quickest way to learn R. 

By using RStudio Cloud, we do not need to install R on our local machine. RStudio Cloud also allows collaboration between R teachers and students. It also helps colleagues working together on R codes.

On its webpage, RStudio is described as a lightweight, cloud-based solution that allows anyone to do, share, teach and learn data science online. And it also adds that by using this exciting platform, it means we can  

- analyze our data using the RStudio IDE, directly from our browser.
- share projects with our team, class, workshop or the world.
- teach data science with R to our students or colleagues.
- learn data science in an instructor-led environment or with interactive tutorials.

RStudio Cloud has the free and the commercial version (which is fortunately very affordable). To start using RStudio Cloud, visit <https://rstudio.cloud/>. On the page, click `Sign Up`.

![Sign Up Page for RStudio Cloud](1login.png)


With RStudio Cloud, there is almost nothing to configure and you do not need dedicated hardware, installation or annual purchase contract required. Individual users, instructors and students only need a browser to do, share, teach and learn data science.


### The RStudio Cloud Registration

This is the registration and login webpage for RStudio Cloud. 

![RStudio Cloud webpage](cloud.PNG)


### Register and log in

You can register now. After registration, you can log in. 

![RStudio Cloud Registration](cloud2.PNG)


## Point and click R GUI

There are a number of the so-called SPSS-like GUI for R. For example 

- Bluesky statistics <https://www.blueskystatistics.com/>
- JAMOVI - <https://www.jamovi.org/>

This is the **Bluesky statistics** software

![Bluesky Statistics software](bluesky.PNG)]

And this is **jamovi** software

![jamovi software](jamovi.PNG)


jamovi is an interesting software. It is a new “3rd generation” statistical spreadsheet. It is designed from the ground up to be easy to use, it is a compelling alternative to costly statistical products such as SPSS and SAS. jamovi is built on top of the R statistical language, giving you access to the best the statistics community has to offer. jamovi will always be free and open because jamovi is made by the scientific community, for the scientific community.

## RStudio Server

You can run R and RStudio on the server. To do this you have to install RStudio Server. By having RStudio Server, it enables you to do analysis on the server. Using RStudio server can give you a taste of working on BIG DATA ON THE CLOUD. 

There are two versions of RStudio Server

- RStudio Server: This is the Open Source edition
- RStudio Workbench: This is the Professional edition. 
  
At our medical school. we have RStudio Server Professional Edition (**courtesy of** RStudio, of course) running on our server here <https://healthdata.usm.my/rstudio/auth-sign-in>
  

## Installing R and RStudio on Your Local Machine  

To install R on your local machine, you have to have **Admin Right** to your machine. We recommend that you install 

- **R** first,
- then **RStudio**


### Installing R

Though you can use the native R software (that you just installed) to run R codes, we highly encourage you to use RStudio Integrated Desktop Environment (IDE). 

We will show this step by step. First, let us install R on your machine. To install R, go to [cran](https://cran.r-project.org/). Then choose the R version that's correct for your machine OS. For example, for Windows OS the link is <https://cran.r-project.org/bin/windows/base/R-3.6.1-win.exe>. And for Mac OS, the download link is  <https://cran.r-project.org/bin/macosx/R-3.6.1.pkg>. Similarly, if you are using Linux, follow the steps as listed before.


![CRAN website](cran.PNG)

It is always recommended that you install the latest version of R. And you can have multiple R version on the same local machines. So you do not need to uninstall the old R version in order to install a new R version.


### Installing RStudio IDE

Now, to install RStudio IDE, go here <https://www.rstudio.com/products/rstudio/download/#download>. Choose the supported platforms correct for your machine OS. The size of download will be around 90-110 MB.

![RStudio website](rstudio2.PNG)


### Checking R and RStudio Installations 

Now, we assume you have installed both R and RStudio. To make sure they work perfectly (or at least for the first time), check: 

- Does your machine can load R? Depending on your OS, go and start R.  
- what version of R do you have? When R loads, look for the version of R.
- Do you have RStudio? Depending on your OS, go and start RStudio. 
- what version of RStudio do you have? When RStudio loads, look for the version of R. If you have multiple R version, you can choose the R version of your choice by going to **Tools** then **Global Options** then **General**
- Do you need to update R and RStudio? By knowing the versions of R and RStudio, now you know if you need to update both or one of them. 


### Installation of MiKTeX, TeXLive and MacTex

It is necessary to install Latex editor if you want to convert the outputs you generated in R into PDF format. But if you do not need to produce PDF document, then you do not have to install it.   

Based on experience, as you go along, you may find it is very attractive to convert your analysis into PDF document. And because of that, you need to install the Latex editor. 

![RMarkdown](rmarkdown.PNG)]

This is MiKTeX, for Window OS 

![MikTeX webpage](miktex.PNG)

And this is MacTeX, for Mac OS

![MacTeX webpage](mactex.PNG)


## Starting your RStudio 

You can either login to RStudio Cloud and automatically see the RStudio interface OR you can start RStudio on your local machine by loading it. Remember, to login to RStudio Cloud, go to <https://rstudio.cloud>. You will be asked for your username and password.   

Click this link <https://rstudio.cloud/spaces/156361/join?access_code=WtlSxNuTm%2Fz7E%2BLb%2FW2XnOw480%2BBTmL4B%2FqjYRIg>

![RStudio Cloud space for this book](book_rstudio_cloud.PNG)


To start R on your machine, and if you are using Windows, find the Rstudio program in your start bar in your machine. And start it. You will see an interface like below. This is definitely different with what you see on your screen because I am using the Vibrant Ink Theme. To choose the theme of your choice, click **Global Options** then, click **Apperance**. There are a number of themes available for you to choose. 

![Rstudio Interface with Vibrant Ink theme](rstudio.PNG)

What you see on RStudio now? You should see three panes if you start Rstudio for the first time or four  panes if you have used RStudio before.

![RStudio Panes](rstudio_def.PNG)



### Console tab

In Console tab, this is where we will see most of the results generated from codes in RStudio. 

![Console Pane](console.PNG)


### Files, Plots, Packages, Help and Viewer Pane 

In this console, you will see

- List of objects (Remember, R is an object-oriented-programming or oop)
- R files, datasets, tables, list etc 

![File, Plots and Viewer Pane](files.PNG)

### Environment, History, Connection and Build Pane

In the environment, history, connection and build pane, you will see this

![Environment Pane](envir.PNG)



### Source Pane 

In the Source pane, you can create R files and write your R codes

![Source Pane](source.PNG)


