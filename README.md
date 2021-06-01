
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

## Authors

Wicak Surya Hasani, Azka Ubaidillah

## Maintainer

Wicak Surya Hasani <221710052@stis.ac.id>

## Functions

  - `saekernel()` Produces Small Area Estimation Non-Parametric based
    Nadaraya-Watson Kernel

  - `mse_saekernel()` Produces Small Area Estimation Non-Parametric
    based Nadaraya-Watson Kernel and Bootstrap Mean Squared Error

  - 
## References

  - Mukhopadhyay P, Maiti T. (2004). Two Stage Non-Parametric Approach
    for Small Areas Estimation. Proceedings of ASA Section on Survey
    Research Methods: 4058-4065.
  - Prasad, N.G.N., and Rao, J.N.K. (1990). “The estimation of the mean
    squared error of the small area estimators.” Journal of the American
    statistical association. 85. 163-171.
  - Hardle, W. (2002). “Applied non-parametric regression,” Cambridge
    University Press.
  - Indahwati, Sadik K, Nurmasari R. (2008). Pendekatan Metode Pemulusan
    Kernel Pada Pendugaan Area Kecil. Makalah Semnas Matematika.
    Universitas Negeri Yogyakarta. Yogyakarta.
  - Darsyah, M. Y. (2013). Small Area Estimation terhadap Pengeluaran
    Per Kapita di Kabupaten Sumenep Dengan Pendekatan Nonparametrik.
    Jurnal Statistika Volume 1 Nomor 2. Universitas Muhammadiyah
    Semarang.
