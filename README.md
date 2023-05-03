
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Researchers working from home: Benefits and challenges

<!-- badges: start -->
<!-- badges: end -->

The goal of repository is to collect the data, and data preprocessing
and analysis scripts needed to reproduce the results of the study titled
Researchers working from home: Benefits and challenges
(<https://doi.org/10.1371/journal.pone.0249127>).

## Folder structure

### Main study

- The source data (data directly downloaded from Qualtrics) are not
  shared as our survey included a free-text comment option and the name
  of the institution the respondents are affiliated with. However, the
  `HomeOffice_Main_Source_Raw.Rmd` file contains all the program code
  that was used to transform the **source data** to **raw data**. The
  raw datafile (`Data/Raw/HomeOffice_Main_Raw_data.tsv`) contains the
  data of all main questions unmodified. The raw and the processed
  datafiles of the main study can be found in the `Data/Main/` folder.
- The `HomeOffice_Main_Raw_Processed.Rmd` in the `root` folder file
  contains the program code to transform the **raw data** to **processed
  data**.
- The main study’s analysis script can be found in the
  `HomeOffice_Main_Analysis.Rmd` file.
- The dataset can be explored interactively by running the
  `HomeOffice_Main_Report.Rmd` file locally.
- The `Figures/` folder contains all the figures created during the
  analysis.

### Pilot study

- Similarly to the main analysis, the **source data** of the pilot study
  cannot be shared in order to maintain anonymity. The code used to
  transform the **source data** to **raw data** for the pilot study can
  be found in the `HomeOffice_Pilot_Source_Raw.Rmd` file.
- The **processed data** for the pilot study can be reporoduced by
  running the code in the `HomeOffice_Pilot_Raw_Processed.Rmd` file.
- The analysis of the pilot study can be reproduced by running the code
  in the `HomeOffice_Pilot_Analysis.Rmd` file.

### Other files

- The `HomeOffice_Sampling.Rmd` file contains the code that we used to
  select the batches of email addresses we contacted during the study.
  We cannot share the list of email addresses.
- The `R/` folder contains the custom functions that are necessary to
  reproduce the data preprocessing and the results.
