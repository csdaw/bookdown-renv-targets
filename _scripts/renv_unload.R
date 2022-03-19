#### unload ####
chapter <- "07-renv"

proj_root <- rprojroot::find_root("_bookdown.yml")

renv_path <- paste0(proj_root, "/_renv/", chapter)
renv:::unload(
  project = renv_path,
  quiet = FALSE
)
