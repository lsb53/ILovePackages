#' Make a tree object with text
#'
#' given a newick-formatted text string, returns an ape tree object of the shape
#'
#' @param tree A newick-formatted tree string
#' @return ape tree object with your text as the tree
#' @examples
#' textToTree("(((A,B),C),D);")
#' @export
#'
readTextTree <- function(tree){
ape::read.tree(text=tree)
  }
