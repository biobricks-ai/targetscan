library(purrr)
library(vroom)
library(arrow)
library(data.table)
library(tools)

outdir <- fs::dir_create("brick")

save_parquet <- function(file) {
	print(file)
	file_path = paste0("cache/unzip/", file)
	dir <- paste0("brick/", fs::path_ext_remove(dirname(file)), "/")
	dir.create(dir, recursive=TRUE)
	file_ext = file_ext(file)
	make_parquet = c("txt", "bed", "gff")
	is_README = grepl(file, pattern="README")

	if(file_ext %in% make_parquet & !is_README) {
		 path <- fs::path_ext_remove(file) |> fs::path_ext_set("parquet") |> fs::path_file()
		 if(file_ext == "bed")
		 	tmp   <- vroom::vroom(file_path, skip = 1, col_names = c("chrom", "Start", "End", "name", 
		 		"score", "strand", "thickStart", "thickEnd", "itemRgb"))
		 else if(file_ext == "gff")
		 	tmp   <- vroom::vroom(file_path, skip =2 , col_names = c("seqid", "source", "type", "start", 
		 		"end", "score", "strand", "phase", "attributes"))
		 else
		 	tmp   <- vroom::vroom(file_path)
		 arrow::write_parquet(tmp,fs::path(dir,path))
	}

	else {
		out_file = paste0(dir, fs::path_file(file))
		file.copy(from=file_path, to=out_file)
	}
}

# WRITE OUTS ================================================================================
fs::dir_ls(outdir) |> fs::file_delete() # delete files present in the directory
list.files("cache/unzip", recursive = TRUE) |> walk(save_parquet) 




