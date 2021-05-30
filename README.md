
<!-- README.md is generated from README.Rmd. Please edit that file -->

# saekernel

<!-- badges: start -->

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

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
