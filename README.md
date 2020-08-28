# My R Notebook

### Install R 3.6.3 on Ubuntu:
```shell
sudo apt install apt-transport-https software-properties-common

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

sudo apt update
sudo apt upgrade
sudo apt install r-base
R --version
```

### Install RStudio on Ubuntu:
```shell
sudo apt update
sudo apt -y install r-base gdebi-core

sudo apt install curl
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1073-amd64.deb
sudo gdebi rstudio-xenial-1.1.442-amd64.deb

rstudio
```

### Data sets for free: 
http://archive.ics.uci.edu/ml/index.php

### If have problem to install some packages on Ubuntu:
```shell
sudo apt-get install libcurl4-openssl-dev libxml2-dev
```

### To install Tidyverse:
```r
install.packages("rsample")
install.packages("recipes")
install.packages("parsnip")
install.packages("yardstick")
install.packages("remotes")
```

### To install devtools for R:
```shell
#on terminal:
sudo apt-get -y build-dep libcurl4-gnutls-dev
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get install libcurl4-openssl-dev libssl-dev
```
```R
#on R:
install.packages('devtools')
#to install here package:
devtools::install_github("krlmlr/here")
```

### Correlation Matrix Plot:
```r
corr_matrix <- cor(summary_training_data %>% 
                   select(-c("field_code", "cut_number")), 
                   method = "spearman")
corrplot(corr_matrix, type="lower", 
         order="hclust", 
         method = "circle",
         # addCoef.col = "black",
         col=brewer.pal(n=8, name="RdYlBu"), 
         tl.srt=10)
```
