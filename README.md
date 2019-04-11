# Code for creating DSM-IV and DSM-5 Substance Use Disorder diagnoses from NESARC III data.

This repository provides SAS code to create DSM IV and DSM 5 substance use disorder diagnoses from the publicly available [NESARC III dataset](https://www.niaaa.nih.gov/research/nesarc-iii)

In order to create and check diagnosis variables, the user should: 

  (1) Obtain the publicly available NESARC III dataset: https://www.niaaa.nih.gov/research/nesarc-iii

  (2) Use the `create_dsm_diag.sas` file to create DSM IV and DSM 5 SUD diagnoses.

  (3) Check the prevalences of the SUDs by comparing them to published numbers using the `sud_prevalence.sas` code.

A fuller description of this process, and a comparison between the results of `create_dsm_diag.sas` and published prevalence results is detailed in `results_summary.pdf`.
