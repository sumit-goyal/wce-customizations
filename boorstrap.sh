sudo package-admin -c install -p gcc 	bzip2 \
  cmake \
	gcc-c++ \
	gcc-gfortran \
	maven \
	tar \
  protobuf-devel \
  snappy-devel \
  opencv-devel \
  boost-devel \
  make \
  wget \
  atlas-devel


  wget https://cran.r-project.org/src/base/R-2/R-2.15.3.tar.gz
  tar zxvf R-2.15.3.tar.gz; cd R-2.15.3/
  ./configure; make; sudo make install
