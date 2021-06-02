#' @title Small Area Estimation Non-Parametric Based Nadaraya-Watson Kernel
#'
#' @description This Function Gives Small Area Estimation Non-Parametric Based Nadaraya-Watson Kernel
#'
#' @param X Auxiliary Variable of X
#' @param Y Direct Estimation of Y
#' @param vardir Sampling variances of Direct Estimators
#' @param bandwidth The kernel Bandwidth Smoothing Parameter
#'
#' @return This function returns a list with following objects:
#' \item{est}{a value of Small Area Estimation Non-Parametric Based Nadaraya-Watson Kernel}
#' \item{refvar}{Estimated Random Effect Variance}
#'
#' @export
#'
#' @importFrom stats dnorm
#'
#' @examples
#' ##load dataset
#' data(Data_saekernel)
#'
#' saekernel(X = Data_saekernel$x, Y = Data_saekernel$y,
#' vardir = Data_saekernel$Vardir, bandwidth = 0.04)
#'
saekernel <- function(X, Y, vardir, bandwidth)
{
  result <- list(est = NA, refvar = NA)
  h <- bandwidth
  x <- X
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

  return(result)
}
