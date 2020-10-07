#test.mypak.R


#original code:
# mypak <- function(packages){
#   new.packages <- packages[!(packages %in% installed.packages()[, "Package"])]
#   if (length(new.packages))
#     install.packages(new.packages, dependencies = TRUE)
#   sapply(packages, require, character.only = TRUE)
# }

test_that("test each part of mypak",{
  expect_gte(length(installed.packages()[, "Package"]),1)
  aList=c(1,2,3,4,5)
  test=c(4,7)
  expect_equal(test[!(test %in% aList)], 7)
  sapply("ggplot2", require, character.only = TRUE)
  expect_true("ggplot2" %in% installed.packages()[, "Package"])
  })
