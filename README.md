# RDynLib_qtof

Semi-automated generation of reference spectral libraries from QTOF data

This folder contains the following files:

-    " ftms_preprocessing.qmd" : where we upload and analyse the data with the xcms treatment.

-   "qtof_filtering.qmd" : in this file we filtered the qtof data and we kept just one spectrum per feature and we load the resulting object as "qtof_filtered.RData".

    **The execution order:**

    1.   " ftms_preprocessing.qmd"
    2.  "qtof_filtering.qmd"
