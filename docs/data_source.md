# Data source

- **Source:** ClinicalTrials.gov
- **Dataset:** Type 2 diabetes clinical-trial search results
- **Search condition:** Type 2 Diabetes
- **Records downloaded:** Top 1,000 search results
- **Format:** CSV
- **Downloaded on:** Add the date you downloaded the file
- **Source URL:** https://clinicaltrials.gov/search?cond=Type%202%20Diabetes

## Data handling

The raw downloaded CSV is kept locally in `data/raw` and is not uploaded to
this repository. A processed analysis dataset is created in `data/processed`
using the notebook `02_load_raw_data.ipynb`.

## Important limitation

This project analyses the 1,000 downloaded search results, not every Type 2
diabetes study registered on ClinicalTrials.gov. Results describe registry
metadata and stated eligibility criteria, not actual participant demographics.