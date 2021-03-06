% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/private-interface.r
\name{bt_getbalances}
\alias{bt_getbalances}
\title{Account Balances for All Currencies}
\usage{
bt_getbalances()
}
\value{
A named list with the following elements:
\itemize{
 \item{success: }{a boolean indicating if the request successful?}
 \item{message: }{a string describing the error if the request was not 
                  successful, otherwise and empty string.}
 \item{result:  }{a \code{data.frame} with the currencies, balances, 
   available funds, the amount of any pending transactions, and 
   crypographic addresses that can be used to receive funding.
 }
}
}
\description{
The \code{bt_getbalances} function retrieves the account balance
for all currencies on the Bittrex crypto-currency 
exchange \url{https://bittrex.com}. This function
can be used after you provide information for authentication.
}
\examples{
\dontrun{
# Note you must authenticate first.
balances <- bt_getbalances()$result
# $success
# [1] TRUE
# 
# $message
# [1] ""
# 
# $result
#   currency   balance available pending
# 1      BTC 0.0000000 0.0000000       0
# 2      ETH 0.2187638 0.2187638       0
# 3      LTC 0.0000000 0.0000000       0
#                               crypto_address
# 1         1Q6WissSMNF7NCNw3sDXQ2F7AbrSCYouj2
# 2 0x0ceac821a72037b07df691a53e201d797252b5a6
# 3         Li71CUBjxFH6PfEZn2phqfPhoasydfNfqF
}
}
\references{
\url{https://bittrex.com/api/v1.1/account/getbalances}
}
\seealso{
\code{\link{bt_authenticate}}
}
