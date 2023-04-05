---
title: "Data Analysis in Medicine and Health using R"
author: "Kamarul Imran, Wan Nor Arifin, Tengku Muhammad Hanis Tengku Mokhtar"
date: "2023-04-05"
site: bookdown::bookdown_site
knit: "bookdown::render_book"
documentclass: krantz
biblio-style: apalike
graphics: yes
link-citations: yes
colorlinks: yes
lot: no
lof: no
fontsize: 10pt
bibliography:
- packages.bib
- references.bib
#url: https\://bookdown.org/drki_musa/dataanalysis/
github-repo: drkamarul/multivar_data_analysis
---


<!-- ```{r setup, include=FALSE} -->
<!-- knitr::opts_chunk$set(echo = TRUE, strip.white = TRUE, message = FALSE, error = FALSE) -->
<!-- knitr::opts_chunk$set(out.width = "70%", out.extra = "keepaspectratio", fig.asp = 1, fig.align = "center") -->
<!-- #knitr::opts_chunk$set(out.width = "70%", fig.align = "center") -->
<!-- ``` -->




# Preface {-}

We wrote this book to help new R programming users with limited programming and statistical background. We understand the struggles they are going through to move from point-and-click statistical software such as SPSS or MS Excel to more code-centric software such as R and Python. From our experiences, frustration sets in early in learning this code-centric software. It often demotivates new users to the extent that they ditch them and return to using point-and-click statistical software. This book will minimise these struggles and gently help these excited but fragile new users to learn quickly and effectively the codes and workflows to perform data and statistical analysis using the R programming language.  

This book's audiences include postgraduate students, public health researchers, epidemiologists, and biostatisticians. We designed and wrote this book based on our experiences teaching students in the public health, epidemiology and biostatistics programmes at the School of Medical Sciences, Universiti Sains Malaysia. Between KIM and WNA, we have over 30 years of experience teaching and training undergraduate and postgraduate students. As we mentioned earlier, most of our postgraduate students are students in public health, epidemiology or biostatistics programmes at the School of Medical Sciences, Universiti Sains Malaysia. The courses we teach include basic and advanced statistics, multivariable data analysis, structural equation modelling, advanced numerical data analysis, and advanced categorical data analysis. This book, we believe, will achieve its objective. The main objective is to help new R programming users (such as our undergraduate and postgraduate students) quickly understand the R programming language, make plots, explore data, summarise data, and perform statistical analyses inside RStudio IDE. We also provide the interpretation of graphs, tables and statistical models relevant to our students and us. They do not have strong mathematical and statistical backgrounds; however, in their career, they are very much involved with collecting, analysing, and interpreting data. Some will work at medical and health institutions and organisations. Their applied knowledge and skills in data analysis and epidemiological and statistical models will help them draw health policies and make evident-based public health interventions.        

We use the [**rmarkdown** package](https://rmarkdown.rstudio.com/) and the [**bookdown** package](https://github.com/rstudio/bookdown) to write this book inside RStudio IDE. We are truly grateful to all the people who have developed both packages and to [POSIT Software](https://posit.co/). Posit Software PBC is an Open Source Data Science Company, previously known as RStudio PBC. Posit Software PBC continuously supports open-source data science initiatives and develops and distributes the fantastic [RStudio IDE](https://posit.co/products/open-source/rstudio/). When writing this physical book, we used R version 4.2.2 and RStudio version 2022.07.2 Build 576. 

The source codes for the book are available on our [GitHub repository](https://github.com/drkamarul/multivar_data_analysis), and the datasets are also available on [GitHub](https://github.com/drkamarul/multivar_data_analysis/tree/main/data). We are indebted to George Knott, the statistics editor at CRC Press, who has been very supportive and understanding when we are chasing the datelines of the book. In addition, CRC Press has been very kind to allow us to have the online version of the book at the [bookdown website](https://bookdown.org/drki_musa/dataanalysis/). Thank you, George and CRC Press. 


All in all, we hope you enjoy this book!


<p>&nbsp;</p>


**Kamarul Imran Musa**
<p>&nbsp;</p>

**Wan Nor Arifin Wan Mansor**
<p>&nbsp;</p>

**Tengku Muhammad Hanis Tengku Mokhtar**
<p>&nbsp;</p>

*School of Medical Sciences,* 

*Universiti Sains Malaysia*

2023-04-05


