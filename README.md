# RDynLib_qtof

Semi-automated generation of reference spectral libraries from QTOF data

This folder contains the following files:

- [qtof_preprocessing.qmd](qtof_preprocessing.qmd): where we load and analyse
  the data with the *xcms* package.

- [qtof_precursormass_accuracy.qmd](qtof_precursormass_accuracy.qmd): where we
  inspect the accuracy of reported and predicted precursor masses of spectra in
  the `XcmsExperiment` object, by comparing them to theoretical m/z values of
  known compounds, previously detected in similar samples.

- [qtof_filtering.qmd](qtof_filtering.qmd) : in this file we filtered the qtof
  data and we kept just one spectrum per feature and we save the resulting
  object as "qtof_filtered.RData".

**The execution order:**

1. *qtof_preprocessing.qmd*
2. *qtof_filtering.qmd*

*qtof_precursormass_accuracy.qmd* is optional.
