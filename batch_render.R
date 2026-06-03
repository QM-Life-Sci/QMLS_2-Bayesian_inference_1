# Setup

options(warn = 2)

# Install necessary packages
packages <- c(
  "bayesplot",
  "bayestestR",
  "brms",
  "stan-dev/cmdstanr",
  "coda",
  "cowplot",
  "jfieberg/Data4Ecologists",
  "distributional",
  "lubridate",
  "modelr",
  "patchwork",
  "posterior",
  "priorsense",
  "readxl",
  "rmcelreath/rethinking",
  "hyunjimoon/SBC",
  "see",
  "tidybayes",
  "tidyverse",
  "truncnorm",
  "wesanderson"
)

# pak::pak(packages)

# Lectures
qmds <- list.files(
  pattern = "^[0-9]+\\.[1-6].*qmd$",
  path = ".",
  full.names = TRUE
)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to revealjs")
  system(syscall)
}


## Problem sets

qmds <- list.files(
  pattern = "^PS_[0-9]+\\.[_Key]*.qmd$",
  path = "Problem_Sets",
  full.names = TRUE
)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to html")
  system(syscall)
}
