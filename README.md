# My R Notebook

### Install RStudio on Ubuntu:
```shell
sudo apt update
sudo apt -y install r-base gdebi-core

sudo apt install curl
curl -O https://download1.rstudio.org/desktop/xenial/amd64/rstudio-1.3.1056-amd64.deb
sudo gdebi rstudio-1.3.1056-amd64.deb

rstudio
```

### Data sets for free: 
http://archive.ics.uci.edu/ml/index.php

### If have problem to install some packages on Ubuntu:
```shell
sudo apt-get install libcurl4-openssl-dev libxml2-dev
```

### Dependecies to install Tidyverse
```r
install.packages("rsample")
install.packages("recipes")
install.packages("parsnip")
install.packages("yardstick")
install.packages("remotes")
```
