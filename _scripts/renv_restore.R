#### renv_restore() - Restore the renv project ####
chapter <- "07-renv"

proj_root <- rprojroot::find_root("_bookdown.yml")

renv_path <- paste0(proj_root, "/_renv/", chapter)
renv_lib_path <- renv::paths$library(project = renv_path)
renv_lockfile_path <- paste0(renv_path, "/renv.lock")

renv::restore(
  library = renv_lib_path,
  lockfile = renv_lockfile_path,
  prompt = FALSE,
  clean = FALSE
)
