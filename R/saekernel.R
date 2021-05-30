#' @title Small Area Estimation Non-Parametric based Nadaraya-Watson Kernel
#'
#' @description This Function Gives Small Area Estimation Non-Parametric based Nadaraya-Watson Kernel
#'
#' @param X Auxiliary variable of X
#' @param Y Direct Estimation of Y
#' @param vardir Sampling variances of direct estimators
#' @param bandwidth The kernel bandwidth smoothing parameter
#' @param K The Kernel to be used. Only can be "dnorm" or "dunif"
#'
#' @return
#' @export
#'
#' @examples
saekernel <- function(X, Y, vardir, bandwidth, K = dnorm)
{
  result <- list(est = NA, refvar = NA)
  h <- bandwidth
  x <- X

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
