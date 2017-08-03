# Install OS libraries
sudo package-admin -c install -p gcc-c++

# Copy Scala Jars
wget https://github.com/sumit-goyal/wce-customizations/blob/master/xgboost4j-0.7.jar -P /home/common/lib/scala/common
wget https://github.com/sumit-goyal/wce-customizations/blob/master/xgboost4j-spark-0.7.jar -P /home/common/lib/scala/common

# Install Python 2 Packages
/home/common/conda/anaconda2/bin/pip install costcla==0.5
/home/common/conda/anaconda2/bin/pip install xgboost

# Install Python3 Packages
/home/common/conda/anaconda3/bin/pip install nltk==3.2.4

# Install R apackages
/usr/bin/R -e "install.packages(c('jsonlite','mime','openssl','curl','digest','R6','httr','memoise','whisker','rstudioapi','git2r','withr','devtools'), repos='https://cran.cnr.berkeley.edu', lib='/home/common/lib/R')"
