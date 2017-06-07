# R function to install packages and return with non-zero status
# in-case the installation of package fails

installPackages = function(package) {
  tryCatch(install.packages(package, repos=NULL),
            warning = function(w) {
              quit(save = "no", status = 1, runLast = FALSE)
              },
            error = function(e) {
              quit(save = "no", status = 1, runLast = FALSE)
              }
  )
 }


 # The packages below are part of R-recommended for R 3.2.2
 boot <- "https://cran.r-project.org/src/contrib/boot_1.3-18.tar.gz";
 class <- "https://cran.r-project.org/src/contrib/class_7.3-14.tar.gz";
 cluster <- "https://cran.r-project.org/src/contrib/Archive/cluster/cluster_2.0.3.tar.gz";
 codetools <- "https://cran.r-project.org/src/contrib/Archive/codetools/codetools_0.2-14.tar.gz";
 foreign <- "https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-66.tar.gz";
 kernsmooth <- "https://cran.r-project.org/src/contrib/KernSmooth_2.23-15.tar.gz";
 lattice <- "https://cran.r-project.org/src/contrib/Archive/lattice/lattice_0.20-33.tar.gz";
 MASS <- "https://cran.r-project.org/src/contrib/MASS_7.3-45.tar.gz";
 Matrix <- "https://cran.r-project.org/src/contrib/Archive/Matrix/Matrix_1.2-4.tar.gz";
 mgcv <- "https://cran.r-project.org/src/contrib/Archive/mgcv/mgcv_1.8-12.tar.gz";
 nlme <- "https://cran.r-project.org/src/contrib/Archive/nlme/nlme_3.1-126.tar.gz";
 nnet <- "https://cran.r-project.org/src/contrib/nnet_7.3-12.tar.gz";
 rpart <- "https://cran.r-project.org/src/contrib/rpart_4.1-10.tar.gz";
 spatial <- "https://cran.r-project.org/src/contrib/spatial_7.3-11.tar.gz";
 survival <- "https://cran.r-project.org/src/contrib/Archive/survival/survival_2.38-3.tar.gz";

 packagesInOrder <- c(boot,
                      MASS,
                      class,
                      cluster,
                      codetools,
                      foreign,
                      kernsmooth,
                      lattice,
                      Matrix,
                      nlme,
                      mgcv,
                      nnet,
                      rpart,
                      spatial,
                      survival);

 for (package in packagesInOrder) {
   print(paste("Installing", package));
   installPackages(package);
 }


 # The packages below are dependencies for devtools (installed at the end).
 jsonlite <- "https://cran.r-project.org/src/contrib/Archive/jsonlite/jsonlite_0.9.19.tar.gz";
 mime <- "https://cran.r-project.org/src/contrib/Archive/mime/mime_0.4.tar.gz";
 openssl <- "https://cran.r-project.org/src/contrib/Archive/openssl/openssl_0.9.2.tar.gz";
 curl <- "https://cran.r-project.org/src/contrib/Archive/curl/curl_0.9.7.tar.gz"
 digest <- "https://cran.r-project.org/src/contrib/Archive/digest/digest_0.6.9.tar.gz";
 httr <- "https://cran.r-project.org/src/contrib/Archive/httr/httr_1.1.0.tar.gz";
 R6 <- "https://cran.r-project.org/src/contrib/Archive/R6/R6_2.1.2.tar.gz";
 memoise <- "https://cran.r-project.org/src/contrib/memoise_1.0.0.tar.gz";
 whisker <- "https://cran.r-project.org/src/contrib/whisker_0.3-2.tar.gz";
 rstudioapi <- "https://cran.r-project.org/src/contrib/Archive/rstudioapi/rstudioapi_0.5.tar.gz";
 git2r <- "https://cran.r-project.org/src/contrib/Archive/git2r/git2r_0.14.0.tar.gz";
 withr <- "https://cran.r-project.org/src/contrib/Archive/withr/withr_1.0.1.tar.gz";
 devtools <- "https://cran.r-project.org/src/contrib/Archive/devtools/devtools_1.11.1.tar.gz";

 packagesInOrder <- c(jsonlite,
                      mime,
                      openssl,
                      curl,
                      digest,
                      R6,
                      httr,
                      memoise,
                      whisker,
                      rstudioapi,
                      git2r,
                      withr,
                      devtools);

 for (package in packagesInOrder) {
   print(paste("Installing", package));
   installPackages(package);
 }
