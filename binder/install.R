options(repos = c(CRAN = "https://packagemanager.posit.co/cran/__linux__/jammy/latest"))

install.packages(c(
  "IRkernel",
  "quanteda",
  "stm"
))

IRkernel::installspec(user = FALSE)
