# This file downloads all data files from TargetScan
library(rvest)
library(purrr)
library(fs)

options(timeout=1800) # download timeout

outs <- fs::dir_create("cache/download") # Create directory to which the downloaded files will be written 
href <- rvest::read_html("https://www.targetscan.org/cgi-bin/targetscan/data_download.vert80.cgi") |>
  rvest::html_elements("a") |>
  rvest::html_attr("href")
dataref <- keep(href,~ grepl("*.zip$",.)) |>  map_chr(~ paste0("https://www.targetscan.org",.)) # URLs of files to be downloaded
files   <- fs::path_file(dataref) |> partial(fs::path,outs)() # output paths

fs::dir_ls("cache/download") |> fs::file_delete() # delete any files already present 
walk2(dataref, files, download.file)
