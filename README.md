---
editor_options: 
  markdown: 
    wrap: 72
---

# RDynLib_qtof

Semi-automated generation of reference spectral libraries from QTOF data

This folder contains the following files:

-   [centroiding.qmd](https://github.com/rebdau/RDynLib_qtof/blob/ahlam/centroiding.qmd):
    First we convert the data from profile to centroided mode.

-   [qtof_preprocessing.qmd](qtof_preprocessing.qmd): where we load and
    analyse the data with the *xcms* package.

-   [qtof_precursormass_accuracy.qmd](qtof_precursormass_accuracy.qmd):
    where we inspect the accuracy of reported and predicted precursor
    masses of spectra in the `XcmsExperiment` object, by comparing them
    to theoretical m/z values of known compounds, previously detected in
    similar samples.

-   [qtof_filtering.qmd](qtof_filtering.qmd) : in this file we filtered
    the qtof data and we kept just one spectrum per feature and we save
    the resulting object as "qtof_filtered.RData".

-   

    [qtofneg_flax_sql.qmd](https://github.com/rebdau/RDynLib_qtof/blob/ahlam/qtofneg_flax_sql.qmd)

    :   here we store the qtof flax negative data to a sql database.

**The execution order:**

1\. *centroiding.qmd*

2\. *qtof_preprocessing.qmd*

3\. *qtof_filtering.qmd*

4.  *qtof_precursormass_accuracy.qmd* is optional.
