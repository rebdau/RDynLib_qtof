library(Spectra)
library(MSnbase)
pth <- getwd()
pth
load("data/ms2_qtof.RData")


sps <- ms2_qtof
peaks_list <- peaksData(sps)
meta_data <- spectraData(sps)

mgf_file <- "qtof_filtered_sirius.mgf"
con <- file(mgf_file, "w")

for (i in seq_along(peaks_list)) {

  if (is.null(peaks_list[[i]])) next
  
  cat("BEGIN IONS\n", file = con)
  cat(paste0("FEATURE_ID=", i, "\n"), file = con)

  pepmass <- if (!is.null(meta_data$precursorMz[i])) meta_data$precursorMz[i] else NA
  cat(paste0("PEPMASS=", pepmass, "\n"), file = con)
  
  cat("CHARGE=1-\n", file = con)
  
  cat("MSLEVEL=2\n", file = con)
  
  peak_matrix <- peaks_list[[i]]
  apply(peak_matrix, 1, function(x) cat(x[1], x[2], "\n", file = con))
  
  cat("END IONS\n\n", file = con)
}

close(con)



















