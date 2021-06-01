#' @title Small Area Estimation Non-Parametric based Nadaraya-Watson Kernel and Bootstrap Mean Squared Error Estimators
#'
#' @description This Function Gives Small Area Estimation Non-Parametric based Nadaraya-Watson Kernel and Calculates the bootstrap mean squared error estimates
#'
#' @param X Auxiliary variable of X
#' @param Y Direct Estimation of Y
#' @param vardir Sampling variances of direct estimators
#' @param bandwidth The kernel bandwidth smoothing parameter
#' @param B Number of bootstrap. Default is 1000
#'
#' @return This function returns a list with following objects:
#' \item{est}{a value of Small Area Estimation Non-Parametric based Nadaraya-Watson Kernel estimators}
#' \item{refvar}{estimated random effect variance}
#' \item{mse}{estimated Bootstrap Mean Squared Error Estimators of Small Area Estimation Non-Parametric based Nadaraya-Watson Kernel}
#'
#' @export
#'
#' @importFrom stats dnorm rnorm
#'
#' @examples
#' ##load dataset
#' data(Data_saekernel)
#'
#' mse_saekernel(X = Data_saekernel$x, Y = Data_saekernel$y,
#' vardir = Data_saekernel$Vardir, bandwidth = 0.04, B = 1000)
#'
mse_saekernel <- function(X, Y, vardir, bandwidth, B = 1000)
{
  result <- list(est = NA, refvar = NA, mse = NA)
  x <- X
  h <- bandwidth
  K = dnorm

  Kx <- sapply(X, function(Xi) K((x - Xi) / h) / h)
  wh <- Kx /(rowSums(Kx)/length(X))
  mh <- ((wh %*% Y)/length(X))

  s <- abs((1/((length(X))-1))*((wh%*%((Y-mh)^2)-vardir)))
  sigma2u <- max(abs(s))
  result$refvar <- sigma2u

  gamma <- sigma2u/(sigma2u + vardir)

  theta <- (gamma*Y)+((1-gamma)*mh)
  result$est <- theta

  n = length(X)
  thetakernel <- matrix(nrow = n, ncol = 1)
  directkernel <- matrix(nrow = n, ncol = 1)
  mse_boot <- matrix(nrow = n, ncol = 1)
  sum_mse <- matrix(0, nrow = n, ncol = 1)
  for (a in 1:B) {
    for (b in 1:n) {
      mhkernel <- mh[b]
      thetakernel[b] <- rnorm(1, mhkernel, sqrt(sigma2u))
      mu2kernel <- thetakernel[b]
      varkernel <- vardir[b]
      directkernel[b] <- rnorm(1, mu2kernel, sqrt(varkernel))
    }
    #Simula
    mh.boot <- ((wh %*% directkernel)/length(X))
    s.boot <- abs((1/(n-1))*((wh%*%((directkernel-mh.boot)^2)- vardir)))
    sigma2u.boot <- max(s.boot)
    gamma.boot <- sigma2u.boot/(sigma2u.boot+ vardir)
    theta.boot <-(gamma.boot*directkernel)+((1-gamma.boot)*mh.boot)

    mse_boot <- (theta.boot - directkernel)^2
    sum_mse <- sum_mse + mse_boot
  }
  mse_kernel_boot <- sum_mse/B
  result$mse <- mse_kernel_boot

  return(result)
}
