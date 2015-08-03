#' Add a TauCharts tooltip
#'
#' @param tau taucharts object
<<<<<<< HEAD
#' @param fields \code{vector} of fields you would like to see in the tooltip.
#'          If \code{NULL} then will assume all fields.
=======
>>>>>>> pr/6
#' @export
tau_tooltip <- function(tau, fields = NULL) {

  if(is.null(fields)){
    fields <- colnames(tau$x$datasource)
  }

  if(is.null(tau$x$plugins)){
    tau$x$plugins = list()
  }

  tau$x$plugins[[length(tau$x$plugins) + 1]] =  list(
    type = "tooltip"
    ,fields = fields
  )

  tau
}

<<<<<<< HEAD
#' Add a TauCharts tooltip
#'
#' @param tau taucharts object
#' @importFrom jsonlite toJSON
#' @export
tau_legend <- function(tau, fields = NULL) {

  if(is.null(fields)){
    fields <- colnames(tau$x$datasource)
  }

=======
#' Add a TauCharts legend
#'
#' @param tau taucharts object
#' @export
tau_legend <- function(tau) {

  if(is.null(tau$x$plugins)){
    tau$x$plugins = list()
  }

  tau$x$plugins[[length(tau$x$plugins) + 1]] =  list(
    type = "legend"
  )

  tau
}


#' Add a TauCharts trendline
#'
#' @param tau taucharts object
#' @param type \code{character} either 'linear', 'exponential', or 'logarithmic'
#'                representing the default trend line to show.  NOTE:  this does not
#'                seem to work as expected.  Use the \code{models} parameter instead.
#' @param hideError \code{logical} to show errors.
#' @param showPanel \code{logical} to show the panel next to the chart to allow a user
#'                to manipulate the trendlines.  When \code{FALSE}, the trendlines will
#'                still appear though.
#' @param showTrend \code{logical} to show the trendlines on initial display.  If
#'                \code{showPanel = TRUE}, then the user will have the opportunity
#'                to add/delete the trendlines.
#' @param models \code{character} or \code{vector} of \code{characters} for the models
#'                to show in the trendline panel if \code{showPanel = TRUE}.  As discussed
#'                above in \code{type}, \code{models} also seems to be the only way
#'                to change the initial \code{type} of the trendline.  So, if you would like
#'                \code{exponential} to display, then set \code{models = "exponential"}. If you
#'                would like to change the order of the options, then you can do
#'                \code{models = c("logarithmic","exponential")}, and the first provided
#'                will be the initial model type used.
#' @export
tau_trendline <- function(
  tau,
  type = 'linear',
  hideError = FALSE,
  showPanel = TRUE,
  showTrend = TRUE,
  models = c('linear', 'exponential', 'logarithmic')
) {

>>>>>>> pr/6
  if(is.null(tau$x$plugins)){
    tau$x$plugins = list()
  }

  tau$x$plugins[[length(tau$x$plugins) + 1]] =  list(
<<<<<<< HEAD
    type = "legend"
=======
    type = "trendline"
    ,settings = list(
      type = 'linear',
      hideError = hideError,
      showPanel = showPanel,
      showTrend = showTrend,
      models = models
    )
>>>>>>> pr/6
  )

  tau
}