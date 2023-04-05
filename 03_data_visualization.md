# Data Visualisation

## Objectives

In this chapter, readers will:

-   be introduced to the concept of data visualisation
-   be able to understand the ingredients for good graphics
-   be able to generate plots using **ggplot** packages
-   be able to save plots in different formats and graphical settings

## Introduction

Many disciplines view data visualisation as a modern equivalent of visual communication. It involves the creation and study of the visual representation of data. Data visualisation requires "information that has been abstracted in some schematic form, including attributes or variables for the units of information". You can read more about data visualization on this [wikipedia](https://en.m.wikipedia.org/wiki/Data_visualization) page and another  [wikipedia](https://en.m.wikipedia.org/wiki/Michael_Friendly) page.


## History and objectives of data visualisation

In his 1983 book, which carried the title *The Visual Display of Quantitative Information*, the author Edward Tufte defines **graphical displays** and principles for effective graphical display. The book mentioned, "Excellence in statistical graphics consists of complex ideas communicated with clarity, precision and efficiency."

Visualisation is the process of representing data graphically and interacting with these representations. The objective is to gain insight into the data. Some of the processes are outlined on Watson IBM [webpage](http://researcher.watson.ibm.com/researcher/view_group.php?id=143)

## Ingredients for good graphics

Good graphics are essential to convey the message from your data visually. They will complement the text for your books, reports or manuscripts. However, you need to make sure that while writing codes for graphics, you need to consider these ingredients:

-   You have good data
-   Priorities on substance rather than methodology, graphic design, the technology of graphic production or something else
-   Do not distort what the data has to say
-   Show the presence of many numbers in a small space
-   Coherence for large data sets
-   Encourage the eye to compare different pieces of data
-   Graphics reveal data at several levels of detail, from a broad overview to the fine structure
-   Graphics serve a reasonably clear purpose: description, exploration, tabulation or decoration
-   Be closely integrated with a data set's statistical and verbal descriptions.

## Graphics packages in R

There are several packages to create graphics in R. They include packages that perform general data visualisation or graphical tasks. The others provide specific graphics for certain statistical or data analyses.

The popular general-purpose graphics packages in R include:

-   **graphics**\index{graphics} : a base R package, which means it is loaded every time we open R
-   **ggplot2**\index{ggplot2} : a user-contributed package by RStudio, so you must install it the first time you use it. It is a standalone package but also comes together with **tidyverse** package
-   **lattice**\index{lattice} : This is a user-contributed package. It provides the ability to display multivariate relationships, and it improves on the base-R graphics. This package supports the creation of trellis graphs: graphs that display a variable or.

A few examples of more specific graphical packages include:

-   **survminer** : The **survminer**\index{survminer} R package provides functions for facilitating survival analysis and visualization. It contains the function `ggsurvplot()` for drawing easily beautiful and ready-to-publish survival curves with the *number at risk* table and *censoring count plot*.
-   **sjPlot**\index{sjPlot} : Collection of plotting and table output functions for data visualization. Using **sjPlot**, you can make plots for various statistical analyses including simple and cross tabulated frequencies, histograms, box plots, (generalised) linear models, mixed effects models, principal component analysis and correlation matrices, cluster analyses, scatter plots, stacked scales, effects plots of regression models (including interaction terms).

Except for **graphics**\index{graphics} package (a base R package), other packages such as **ggplot2** and **lattice** need to be installed into your R library if you want to use them for the first time.

## The **ggplot2**\index{ggplot2} Package

We will focus on using the **ggplot2**\index{ggplot2} package for this book. The **ggplot2**\index{ggplot2} package is an elegant, easy and versatile general graphics package in R. It implements the **grammar of graphics**\index{Grammar of graphics} concept. This concept's advantage is that it fastens the process of learning graphics. It also facilitates the process of creating complex graphics

To work with **ggplot2**\index{ggplot2}, remember that at least your R codes must

-   start with `ggplot()`
-   identify which data to plot `data = Your Data`
-   state variables to plot for example `aes(x = Variable on x-axis, y = Variable on y-axis )` for bivariate
-   choose type of graph, for example `geom_histogram()` for histogram, and `geom_points()` for scatterplots\index{Scatterplot}

The official website for ggplot2\index{ggplot2} is here <https://ggplot2.tidyverse.org/> which is an excellent resource. The website states that *ggplot2*\index{ggplot2} is a plotting system for R, based on the grammar of graphics\index{Grammar of graphics}, which tries to take the good parts of base and lattice\index{lattice} graphics and none of the bad parts. It takes care of many fiddly details that make plotting a hassle (like drawing legends) and provides a powerful model of graphics that makes it easy to produce complex multi-layered graphics.

## Preparation

### Create a New RStudio Project

We always recommend that whenever users want to start working on a new data analysis project in RStudio, they should create a new R project.

-   Go to `File`,
-   Click `New Project`.

If you want to create a new R project using an existing folder, then choose this folder directory when requested in the `existing Directory` in the `New Project Wizard` window. An R project directory is useful because RStudio will store and save your codes and outputs in that directory (folder).

If you do not want to create a new project, then ensure you are inside the correct directory (R call this a working directory). The working directory is a folder where you store your codes and outputs. If you want to locate your working directory, type `getwd()` in your Console.

Inside your working directory,

-   we recommend you keep your dataset and your codes (R scripts `.R`, R markdown files `.Rmd`\index{R markdown})
-   RStudio will store your outputs

### Important questions before plotting graphs

It would be best if you asked yourselves these:

-   Which variable or variables do you want to plot?
-   What is (or are) the type of that variable?
    -   Are they factor (categorical) variables or numerical variables?
-   Am I going to plot
    -   a single variable?
    -   two variables together?\
    -   three variables together?

## Read Data

R can read almost all (if not all) types of data. The common data formats in data and statistical analysis include

-   comma-separated files (`.csv`)
-   MS Excel file (`.xlsx`)
-   SPSS\index{SPSS} file (`.sav`)
-   Stata\index{STATA} file (`.dta`)
-   SAS\index{SAS} file (`.sas`)

However, it would help if you had user-contributed packages to read data from statistical software. For example. **haven**\index{haven} and **rio**\index{rio} packages.

Below we show are the functions to read SAS\index{SAS}, SPSS\index{SPSS} and Stata\index{STATA} file using the **haven**\index{haven} package.

1.  SAS\index{SAS}: `read_sas()` reads .sas7bdat + .sas7bcat files and read_xpt() reads SAS\index{SAS} transport files (version 5 and version 8). write_sas() writes .sas7bdat files.
2.  SPSS\index{SPSS}: `read_sav()` reads .sav files and read_por() reads the older .por files. write_sav() writes .sav files.
3.  Stata\index{STATA}: `read_dta()` reads .dta files (up to version 15). write_dta() writes .dta files (versions 8-15).

Sometimes, users may want to analyse data stored in databases. Some examples of common databases format are:

1.  MySQL
2.  SQLite
3.  Postgresql
4.  MariaDB

To read data from databases, you must connect your RStudio IDE with the database. There is an excellent resource to do this on the *Databases Using R* [webpage](https://solutions.rstudio.com/db/)

## Load the packages

The **ggplot2**\index{ggplot2} package is one of the core member of **tidyverse**\index{tidyverse} metapackage (<https://www.tidyverse.org/>). So, whenever we load the **tidyverse**\index{tidyverse} package, we automatically load other packages inside the **tidyverse**\index{tidyverse} metapackage. These packages include **dplyr**\index{dplyr}, **readr**\index{readr}, and of course **ggplot2**\index{ggplot2}.

Loading a package will give you access to

1.  help pages of the package
2.  functions available in the package
3.  sample datasets (not all packages contain this feature)

We also load the **here**\index{here} package in the example below. This package is helpful to point R codes to the specific folder of an R project directory. We will see this in action later.


```r
library(tidyverse)
```

```
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.1     ✔ readr     2.1.4
## ✔ forcats   1.0.0     ✔ stringr   1.5.0
## ✔ ggplot2   3.4.2     ✔ tibble    3.2.1
## ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
## ✔ purrr     1.0.1     
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

```r
library(here)
```

```
## here() starts at C:/Users/drkim/OneDrive - Universiti Sains Malaysia/multivar_data_analysis
```

If you run the `library()` code and then get this message *there is no package called tidyverse*\index{tidyverse}, it means the package is still unavailable in your R library. So, you need to install the missing package. Similarly, if you receive the error message while loading the **tidyverse**\index{tidyverse} package, you must install it.

To install an R package for example **tidyverse**, type `install.package("tidyverse")`\index{tidyverse} in the Console. Once the installation is complete, type `library(tidyverse)`\index{tidyverse} again to load the package. Alternatively, you can use the GUI\index{GUI} to install the package.

![Packages window](tidyverse.png){width="60%"}

Now, type the package you want to install. For example, if you want to install the **tidyverse**\index{tidyverse} package, then type the name in the box.

![Typing name of the package to install](tidyverse2.png){width="60%"}

## Read the dataset

In this chapter, we will use two datasets, the `gapminder` dataset and a peptic ulcer dataset. The `gapminder` dataset is a built-in dataset in the **gapminder**\index{gapminder} package. You can read more about *gapminder*\index{gapminder} from <https://www.gapminder.org/> webpage. The gapminder\index{gapminder} website contains many useful datasets and shows excellent graphics, made popular by the late Dr Hans Rosling.

To load the **gapminder**\index{gapminder} package, type:


```r
library(gapminder)
```

Next, we will call the data *gapminder* into R. Then , we will browse the first six observations of the data. The codes below:

-   assigns gapminder as a dataset
-   contains a pipe `%>%` that connects two codes (`gapminder` and `slice`)
-   contains a function called `slice()` that selects rows of the dataset


```r
gapminder <- gapminder
gapminder %>% 
  slice(1:4)
```

```
## # A tibble: 4 × 6
##   country     continent  year lifeExp      pop gdpPercap
##   <fct>       <fct>     <int>   <dbl>    <int>     <dbl>
## 1 Afghanistan Asia       1952    28.8  8425333      779.
## 2 Afghanistan Asia       1957    30.3  9240934      821.
## 3 Afghanistan Asia       1962    32.0 10267083      853.
## 4 Afghanistan Asia       1967    34.0 11537966      836.
```

It is a good idea to quickly list the variables of the dataset and look at the type of each of the variables:


```r
glimpse(gapminder)
```

```
## Rows: 1,704
## Columns: 6
## $ country   <fct> "Afghanistan", "Afghanistan", "Afghanistan", "Afghanistan", …
## $ continent <fct> Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, …
## $ year      <int> 1952, 1957, 1962, 1967, 1972, 1977, 1982, 1987, 1992, 1997, …
## $ lifeExp   <dbl> 28.801, 30.332, 31.997, 34.020, 36.088, 38.438, 39.854, 40.8…
## $ pop       <int> 8425333, 9240934, 10267083, 11537966, 13079460, 14880372, 12…
## $ gdpPercap <dbl> 779.4453, 820.8530, 853.1007, 836.1971, 739.9811, 786.1134, …
```

We can see that the *gapminder* dataset has:

-   six (6) variables
-   a total of 1704 observations
-   two factor variables, two integer variables and two numeric (`dbl`) variables

We can generate some basic statistics of the gapminder datasets by using `summary()`. This function will list

-   the frequencies
-   central tendencies and dispersion such as min, first quartile, median, mean, third quartile and max


```r
summary(gapminder)
```

```
##         country        continent        year         lifeExp     
##  Afghanistan:  12   Africa  :624   Min.   :1952   Min.   :23.60  
##  Albania    :  12   Americas:300   1st Qu.:1966   1st Qu.:48.20  
##  Algeria    :  12   Asia    :396   Median :1980   Median :60.71  
##  Angola     :  12   Europe  :360   Mean   :1980   Mean   :59.47  
##  Argentina  :  12   Oceania : 24   3rd Qu.:1993   3rd Qu.:70.85  
##  Australia  :  12                  Max.   :2007   Max.   :82.60  
##  (Other)    :1632                                                
##       pop              gdpPercap       
##  Min.   :6.001e+04   Min.   :   241.2  
##  1st Qu.:2.794e+06   1st Qu.:  1202.1  
##  Median :7.024e+06   Median :  3531.8  
##  Mean   :2.960e+07   Mean   :  7215.3  
##  3rd Qu.:1.959e+07   3rd Qu.:  9325.5  
##  Max.   :1.319e+09   Max.   :113523.1  
## 
```

## Basic plots\index{Basic plots}

Let us start by creating a simple plot using these arguments:

-   data : `data = gapminder`
-   variables : `x = year`, `y =  lifeExp`
-   graph scatterplot\index{Scatterplot} : `geom_point()`

**ggplot2**\index{ggplot2} uses the $+$ sign to connect between functions, including **ggplot2** functions that span multiple lines.


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, y = lifeExp))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-6-1.png" width="80%" />

From the plot, we can see

-   a scatterplot\index{Scatterplot}
-   the scatterplot\index{Scatterplot} shows the relationship between `year` and `life expectancy`.
-   as variable year advances, the life expectancy increases.

If you look closely, you will notice that

-   `ggplot()` function tells R to be ready to make plot from a specified data.
-   `geom_point()` function tells R to make a scatter plot.

Users may find more resources about **ggplot2**\index{ggplot2} package on the **ggplot2** [webpage](https://ggplot2.tidyverse.org/reference/ggplot.html) [@R-ggplot2]. Other excellent resources include the online [R Graphics Cookbook](https://r-graphics.org/) and its physical book [@chang2013r] .

## More complex plots

### Adding another variable

We can see that the variables we want to plot are specified by `aes()`. We can add a third variable to make a more complex plot. For example:

-   data : `data = gapminder`
-   variables : `x = year`, `y = lifeExp`, `colour = continent`

The objective of creating plot using multiple (more than two variables) is to enable users to visualize a more complex relationship between more than two variables. Let us take a visualization for variable `year`, variable `life expectancy`, and variable `continent`.


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, 
                           y = lifeExp, 
                           colour = continent))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-7-1.png" width="80%" />

From the scatterplot\index{Scatterplot} of these three variables, you may notice that.

-   European countries have a high life expectancy
-   African countries have a lower life expectancy
-   One country is Asia looks like an outlier (very low life expectancy)
-   One country in Africa looks like an outlier too (very low life expectancy)

Now, we will replace the third variable with Gross Domestic Product `gdpPercap` and correlates it with the size of `gdpPerCap`.


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, 
                           y = lifeExp, 
                           size = gdpPercap))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-8-1.png" width="80%" />

You will notice that *ggplot2*\index{ggplot2} automatically assigns a unique level of the aesthetic (here, a unique colour) to each value of the variable, a process known as scaling. *ggplot2*\index{ggplot2} also adds a legend that explains which levels correspond to which values. For example, the plot suggests that with higher `gdpPerCap`, there is also a longer `lifeExp`.

Instead of using colour, we can also use different shapes. Different shapes are helpful, especially when there is no facility to print out colourful plots.


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, 
                           y = lifeExp, 
                           shape = continent))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-9-1.png" width="80%" />

You may create a different colour plot if you specify the colour outside the `aes` parentheses. For example, let's set the parameter colour to `blue`:


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, y = lifeExp), 
             colour = 'blue')
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-10-1.png" width="80%" />

To change the parameter shape, for example, to the plus symbol, you can set the argument for `shape` to equal `3`.


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, y = lifeExp), 
             shape = 3)
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-11-1.png" width="80%" />

You may be interested to know what number corresponds to what type of shape. To do so, you can type `?pch` to access the help document. You will see in the Viewer pane, there will be a document that explains various shapes available in R. It also shows what number that represents each shape.

### Making subplots

You can split our plots based on a factor variable and make subplots using the `facet()`. For example, if we want to make subplots based on continents, then we need to set these parameters:

-   data = gapminder
-   variable `year` on the x-axis and `lifeExp` on the y-axis
-   split the plot based on continent
-   set the number of rows for the plot at 3


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, y = lifeExp)) + 
  facet_wrap(~ continent, nrow = 3)
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-12-1.png" width="80%" />

However, you will get a different arrangement of plot if you change the value for the `nrow`


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = year, y = lifeExp)) + 
  facet_wrap(~ continent, nrow = 2)
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-13-1.png" width="80%" />

### Overlaying plots

Each `geom_X()` in ggplot2\index{ggplot2} indicates different visual objects. This is a scatterplot\index{Scatterplot}:


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-14-1.png" width="60%" />

This is a smooth line plot\index{Line plot}:


```r
ggplot(data = gapminder) +
  geom_smooth(mapping = aes(x = gdpPercap, y = lifeExp))
```

```
## `geom_smooth()` using method = 'gam' and formula = 'y ~ s(x, bs = "cs")'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-15-1.png" width="80%" />

Let's generate a smooth plot based on continent using the `linetype()` and use `log(gdpPercap)` to reduce the skewness of the data. Use these codes:


```r
ggplot(data = gapminder) +
  geom_smooth(mapping = aes(x = log(gdpPercap), 
                            y = lifeExp, 
                            linetype = continent))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-16-1.png" width="80%" />

Another smooth plot but setting the parameter for colour:


```r
ggplot(data = gapminder) +
  geom_smooth(mapping = aes(x = log(gdpPercap), 
                            y = lifeExp, 
                            colour = continent))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-17-1.png" width="80%" />

### Combining different plots

We can combine more than one `geoms` (type of plots) to overlay plots. The trick is to use multiple `geoms` in a single line of R code:


```r
ggplot(data = gapminder) +
  geom_point(mapping = aes(x = log(gdpPercap), y = lifeExp)) +
  geom_smooth(mapping = aes(x = log(gdpPercap), y = lifeExp))
```

```
## `geom_smooth()` using method = 'gam' and formula = 'y ~ s(x, bs = "cs")'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-18-1.png" width="80%" />

The codes above show duplication or repetition. To avoid this, we can pass the mapping to `ggplot()`:


```r
ggplot(data = gapminder, 
       mapping = aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point() +
  geom_smooth()
```

```
## `geom_smooth()` using method = 'gam' and formula = 'y ~ s(x, bs = "cs")'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-19-1.png" width="80%" />

And we can expand this to make scatterplot\index{Scatterplot} shows different colour for continent:


```r
ggplot(data = gapminder, 
       mapping = aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point(mapping = aes(colour = continent)) +
  geom_smooth()
```

```
## `geom_smooth()` using method = 'gam' and formula = 'y ~ s(x, bs = "cs")'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-20-1.png" width="80%" />

Or expand this to make the smooth plot shows different colour for continent:


```r
ggplot(data = gapminder, 
       mapping = aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point() +
  geom_smooth(mapping = aes(colour = continent))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-21-1.png" width="80%" />

Or both the scatterplot and the smoothplot:


```r
ggplot(data = gapminder, 
       mapping = aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point(mapping = aes(shape = continent)) +
  geom_smooth(mapping = aes(colour = continent))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-22-1.png" width="80%" />

### Statistical transformation

Let us create a Bar chart\index{Bar chart}, with y-axis as the frequency.


```r
ggplot(data = gapminder) +
  geom_bar(mapping = aes(x = continent))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-23-1.png" width="80%" />

If we want the y-axis to show proportion, we can use these codes.


```r
ggplot(data = gapminder) +
  geom_bar(mapping = aes(x = continent, y = after_stat(count/sum(count)),
                         group = 1))
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-24-1.png" width="80%" />

Or you can be more elaborate like below:


```r
gapminder2 <- 
  gapminder %>% 
  count(continent) %>% 
  mutate(perc = n/sum(n) * 100)

pl <- gapminder2 %>% 
  ggplot(aes(x = continent, y = n, fill = continent))
pl <- pl + geom_col()
pl <- pl + geom_text(aes(x = continent, y = n
                         , label = paste0(n, " (", round(perc,1),"%)")
                         , vjust = -0.5
                         
                         ))
pl <- pl + theme_classic()
pl <- pl + labs(title ="Bar chart showing count and percentage")
pl
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-25-1.png" width="80%" />

### Customizing title

We can customize many aspects of the plot using **ggplot2** package. For example, from gapminder dataset, we choose `gdpPerCap` and log it (to reduce skewness) and `lifeExp`, and make a scatterplot.

Let's name the plot as `mypop`


```r
mypop <- ggplot(data = gapminder, 
                mapping = aes(x = log(gdpPercap), 
                              y = lifeExp)) +
  geom_point() +
  geom_smooth(mapping = aes(colour = continent))
mypop
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-26-1.png" width="80%" />

You will notice that there is no title in the plot, so now you want to add the title:


```r
mypop + 
  ggtitle("GDP (in log) and life expectancy")
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-27-1.png" width="80%" />

To make the title appear in multiple lines, we can add `\n`:


```r
mypop + ggtitle("GDP (in log) and life expectancy:
                \nData from Gapminder")
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-28-1.png" width="80%" />

### Adjusting axes

We can specify the tick marks

-   min = 0
-   max = 12
-   interval = 1


```r
mypop + 
  scale_x_continuous(breaks = seq(0,12,1))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-29-1.png" width="80%" />

And we can label the x-axis and y-axis:


```r
mypop + 
  ggtitle("GDP (in log) and life expectancy:
                \nData from Gapminder") + 
  ylab("Life Expentancy") + 
  xlab("Percapita GDP in log")
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-30-1.png" width="60%" />

### Choosing themes

The default is gray theme or `theme_gray()`. But there are many other themes. One of the popular themes is the black and white theme and the classic theme:


```r
mypop + 
  theme_bw()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-31-1.png" width="60%" />


```r
mypop + 
  theme_classic()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-32-1.png" width="80%" />

## Saving plots\index{Saving plots}

In R, you can save the plot in different graphical formats. You can also set other parameters such as the `dpi` and the size of the plot (height and width). One of the preferred formats for saving a plot is PDF format.

Here, we will show how to save plots in a different format in R. In this example, let us use the object we created before (`mypop`). We will add

-   title
-   x label
-   y label
-   classic theme

And then create a new graphical object, `myplot`


```r
myplot <- 
  mypop + 
  ggtitle("GDP (in log) and life expectancy:
                \nData from Gapminder") + 
  ylab("Life Expentancy") + 
  xlab("Percapita GDP in log") +
  scale_x_continuous(breaks = seq(0,12,1)) +
  theme_classic()
myplot
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="03_data_visualization_files/figure-html/unnamed-chunk-33-1.png" width="60%" />

We now can see a nice plot. And next, we want to save the plot (currently on the screen) to these formats:

-   `pdf` format
-   `png` format
-   `jpg` format

If we want to save the plots in a folder named as `plots`, then 

- go to working directory
- click New Folder 
- name it as `plot`

![New folder as plots](newfolder.png){width="80%"}

![Name the folder as plots](plots.png){width="40%"}

This is when the `here()` function is handy. You can easily point to the correct folder so R knows where to locate the file. 

`here()` is a function under a small packages called simply as **here**\index{here}. This function helps you retrieve or save file or files or r objects from and to the correct path (including folder). This works even when we are using different machines. 

Many of us recall the uncomfortable experiences when the drive name changes automatically (especially when using a thumb drive) on different computers. By using `here()` from the **here**\index{here} package, we will always get to the correct path or folder.

To save the plots in the directory named plots in different image formats, we can do these:


```r
ggsave(plot = myplot, 
       here("plots","my_pdf_plot.pdf"))
```

```
## Saving 7 x 5 in image
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

```r
ggsave(plot = myplot, 
       here("plots","my_png_plot.png")) 
```

```
## Saving 7 x 5 in image
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

```r
ggsave(plot = myplot, 
       here("plots","my_jpg_plot.jpg"))
```

```
## Saving 7 x 5 in image
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

**ggplot2** is flexible and contains many customizations. For example, we want to set these parameters to our plots:

1.  width = 10 cm (or you can use `in` for inches)
2.  height = 6 cm (or you can use `in` for inches)
3.  dpi = 150. `dpi` is dots per inch


```r
ggsave(plot = myplot, 
       here('plots','my_pdf_plot2.pdf'), 
       width = 10, height = 6, units = "in",
       dpi = 150, device = 'pdf')
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

```r
ggsave(plot = myplot, 
       here('plots','my_png_plot2.png'), 
       width = 10, height = 6, units = "cm", 
       dpi = 150, device = 'png')
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

```r
ggsave(plot = myplot, 
       here("plots","my_jpg_plot2.jpg"), 
       width = 10, height = 6, units = "cm",
       dpi = 150, device = 'jpg')
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

## Summary

In this chapter, we briefly describe important matters before making plots. Then we teach readers to make plots using the **ggplot2** package. This package uses the principle of Grammar for Graphics to ensure the codes are more intuitive to users. Readers learn to generate a simple plot for one variable before plotting two and three variables simultaneously. **ggplot2** is also flexible and contains many customizations to help readers generate fantastic plots and how to save them.
