#### renv_snapshot() - Create a snapshot of the R environment for the post ####
chapter <- "07-renv"

proj_root <- rprojroot::find_root("_bookdown.yml")

chapter_path <- paste0(proj_root, "/", chapter, "/")
renv_path <- paste0(proj_root, "/_renv/", chapter)
renv_lockfile_path <- paste0(renv_path, "/renv.lock")

# get current working directory
current_wd <- getwd()

renv::snapshot(
  project = chapter_path,
  lockfile = renv_lockfile_path,
  type = "implicit",
  prompt = FALSE
)

setwd(current_wd)
