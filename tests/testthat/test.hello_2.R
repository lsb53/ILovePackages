#test.hello_2.r

#test the hello2 function

test_that("make sure hello_2 returns a character",{
  expect_is(hello_2(),"character")
})
