#' @title Client for the Bittrex Crypto-Currency Exchange
#' @name bittrex-package
#' @aliases bittrex-package bittrex
#' @docType package
#' @references \url{https://bittrex.com/}
#' \url{https://github.com/kaneplusplus/bittrex}
#' @description
#' This software is in no way affiliated, endorsed, or approved by
#' the Bittrex crypto-currency exchange or any of its affiliates. It comes with
#' absolutely no warranty and should not be used in actual trading
#' unless the user can read and understand the source and know what you are
#' doing.
#'
#' Package 'bittrex' is an R implementation of the REST interface used
#' by the Bittrex crypto-currency exchange (\url{https://bittrex.com/}). It
#' provides functions for all endpoints currently (as of May 16, 2017)
#' supported by the exchange. This includes the ability
#' to retrieve price, volume, and orderbook information as well as the ability
#' to trade crypto-currencies.
#'
#' Calls to the exchange are categorized as either public, which includes
#' requests for price, volume, and order book information, and private, which
#' includes all requests requiring an account including placing buy or sell
#' orders. Public calls can be used directly by installing the package.
#' Private calls require creating an account at
#' \url{https://https://bittrex.com/account/Register} and creating an API and
# secret key with appropriate permissions.
#'
#' Private calls retrieve the API and secret key using the BITTREX_API_KEY and
#' BITTREX_SECRET_KEY environment variables. These may be set by the user
#' before opening the R session or, they can be set using the
#' 'bittrex_authenticate' function.
#'
#' Public Function Calls
#' \itemize{
#' \item{getcurrencies: }{all supported currencies at Bittrex along with other meta data}
#' \item{getmarkethistory: }{the latest trades that have occurred for a specified market}
#' \item{getmarkets: }{the open and available trading markets at Bittrex along with other meta data}
#' \item{getmarketsummaries: }{the last 24 hour summary of all active exchanges}
#' \item{getmarketsummary: }{the last 24 hour summary of all active exchanges}
#' \item{getorderbook: }{the orderbook for a given market}
#' \item{getticker: }{the current tick values for a market}
#' }
#' Private Function Calls
#' \itemize{
#' \item{bittrex_authenticate: }{provide user authentication data}
#' \item{buy: }{place a buy limit order}
#' \item{cancel: }{cancel buy or sell order}
#' \item{getbalances: }{account balances for currencies}
#' \item{getbalance: }{account balance for a specified currency}
#' \item{getdepositaddress: }{retrieve or generate an address for a specified
#'  currency}
#' \item{getdeposithistory: }{retrieve your deposit history}
#' \item{getopenorders: }{order data for all open orders}
#' \item{getorder: }{retrieve a single order by uuid}
#' \item{getorderhistory: }{recent order history for an account }
#' \item{getwithdrawlhistory: }{retrieve your withdrawal history}
#' \item{sell: }{place a sell limit order}
#' \item{withdraw: }{withdraw funds from your account}
#' }
NULL
