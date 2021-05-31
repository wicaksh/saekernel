
<!-- README.md is generated from README.Rmd. Please edit that file -->

# saekernel

<!-- badges: start -->

[![Travis build
status](https://travis-ci.com/wicaksh/saekernel.svg?branch=master)](https://travis-ci.com/wicaksh/saekernel)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/wicaksh/saekernel?branch=master&svg=true)](https://ci.appveyor.com/project/wicaksh/saekernel)
[![Codecov test
coverage](https://codecov.io/gh/wicaksh/saekernel/branch/master/graph/badge.svg)](https://codecov.io/gh/wicaksh/saekernel?branch=master)
<!-- badges: end -->

Propose an area-level, non-parametric regression estimator based on
Nadaraya-Watson kernel on small area mean. Adopt a two-stage estimation
approach proposed by Prasad and Rao (1990). MSE estimators are not
readily available, so resampling method that called bootstrap is
applied. This package are based on the model proposed in Two stage
non-parametric approach for small area estimation by Pushpal
Mukhopadhyay and Tapabrata Maiti.

## Installation

You can install the released version of saekernel from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("saekernel")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(saekernel)
## basic example code
```
