#' ---
#' output: github_document
#' ---

library(fs)
#path_home("Desktop", "day1_s1_explore-libraries")
#path_home("Desktop")
(from_dir <- path_home("..", "Desktop", "day1_s1_explore-libraries"))
dir_ls()
(from_files <- dir_ls(from_dir, glob = "*.R"))
(to_files <- path_file(from_files))
#(out <- file_copy(from_files, to_files))
dir_ls()
dir_info()


