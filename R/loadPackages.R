#' Install packages that don't exist; load them all
#'
#' Given a list of packages, installs the ones that aren't installed and loads them all.
#'
#' @param packages A vector of packages
#' @return all packages will be installed if necessary and possible, and loaded. Returns TRUE if successful for each package
#' @examples
#' mypak(c("ggplot2","dplyr"))
#' @export
#'

mypak <- function(packages){
  new.packages <- packages[!(packages %in% installed.packages()[, "Package"])]
  if (length(new.packages))
    install.packages(new.packages, dependencies = TRUE)
  sapply(packages, require, character.only = TRUE)
}
