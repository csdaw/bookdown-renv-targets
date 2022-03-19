#### renv_new() - Create a minimal R environment for a post ####
chapter <- "07-renv"

proj_root <- rprojroot::find_root("_bookdown.yml")

renv_path <- paste0(proj_root, "/_renv/", chapter)
renv_lib_path <- renv::paths$library(project = renv_path)

# get current working directory
current_wd <- getwd()

# create directories (yes, this is redundant)
if(!dir.exists(renv_path)) dir.create(renv_path)
if(!dir.exists(renv_lib_path)) dir.create(renv_lib_path, recursive = TRUE)

# initialise a bare project
renv::init(
  project = renv_path,
  bare = TRUE,
  restart = FALSE
)

# remove unneeded proj file and restore working directory
proj_file <- paste0(renv_path, "/", chapter, ".Rproj")
if(file.exists(proj_file)) file.remove(proj_file)
setwd(current_wd)

renv::install(
  packages = c("renv"),
  library = renv_lib_path
)


