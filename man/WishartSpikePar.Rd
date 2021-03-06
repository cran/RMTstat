\name{WishartSpikePar}
\alias{WishartSpikePar}
\title{Spiked Wishart Eigenvalue Centering and Scaling}
\description{
  Centering and scaling for the sample eigenvalue from a spiked
  Wishart matrix (sample covariance matrix) with \code{ndf} degrees of
  freedom, \code{pdim} dimensions, and population covariance matrix 
  \code{diag(spike+var,var,var,...,var)}.
}
\usage{
  WishartSpikePar( spike, ndf=NA, pdim=NA, var=1, beta=1 )
}
\arguments{
  \item{spike}{the value of the spike.}
  \item{ndf}{the number of degrees of freedom for the Wishart matrix.}
  \item{pdim}{the number of dimensions (variables) for the Wishart matrix.} 
  \item{var}{the population (noise) variance.}
  \item{beta}{the order parameter (1 or 2).}  
}
\value{
  \item{centering}{gives the centering.}
  \item{scaleing}{gives the scaling.}
}
\details{
  The returned values give appropriate centering and scaling for the largest
  eigenvalue from a spiked Wishart matrix so that the centered and 
  scaled quantity converges in distribution to a normal random variable
  with mean 0 and variance 1.
  
  For the spiked distribution to exist, \code{spike} must be greater than
  \code{sqrt(pdim/ndf)*var}.
  
  Supported values for \code{beta} are \code{1} for real data and
  and \code{2} for complex data.
}
\references{
  Baik, J., Ben Arous, G., and \enc{Péché}{Peche}, S. (2005).
    Phase transition of the largest eigenvalue for non-null 
    complex sample covariance matrices.
    \emph{Annals of Probability} \bold{33}, 1643--1697.
    
  Baik, J. and Silverstein, J. W. (2006). 
    Eigenvalues of large sample covariance matrices of spiked 
    population models.
    \emph{Journal of Multivariate Analysis} \bold{97}, 1382-1408.
    
  Paul, D. (2007). Asymptotics of sample eigenstructure for a large 
    dimensional spiked covariance model.
    \emph{Statistica Sinica} \bold{17}, 1617--1642.
}
\author{Iain M. Johnstone, Zongming Ma, Patrick O. Perry and Morteza Shahram}
\seealso{\link{WishartSpike}}
\keyword{distribution}
