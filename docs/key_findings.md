# Key findings

## Dataset

This analysis uses the top 1,000 Type 2 diabetes search results downloaded from
ClinicalTrials.gov. It examines registry metadata and stated eligibility
criteria; it does not analyse actual enrolled participant demographics.

## Data quality

- The dataset contains 1,000 study records and no duplicate NCT numbers.
- Phase information is missing for 51.1% of records. This is expected for
  observational studies, which do not typically use clinical trial phases.
- Location information is missing for 103 records (10.3%).
- Enrollment is missing for 10 records and equals zero for 18 records. These
  values were retained and documented rather than removed without justification.

## Representation and eligibility

- 96.7% of records are open to all sexes.
- 87.9% include older adults in their stated eligibility criteria.
- 5.6% include children.
- These results describe eligibility criteria, not the demographics of people
  who actually enrolled.

## Study scale

- The median reported enrollment was 80 for interventional studies and 250 for
  observational studies.
- Mean enrollment was much larger than median enrollment in both groups because
  a small number of extremely large studies skewed the average upward.
- Median enrollment is therefore used as the more representative measure of a
  typical study size.

## Funding and sponsors

- `OTHER` funders accounted for 53.4% of records and `INDUSTRY` funders for
  43.8%.
- The most frequent named sponsors in this downloaded sample were Eli Lilly and
  Company (41 studies) and AstraZeneca (39 studies).
- These counts are not measures of market share or study quality.

## Geographic scope

- The processed site-level table contains 7,968 reported sites across
  84 countries.
- The United States had the most reported sites (3,362), followed by China
  (571), Germany (300), India (298), and Japan (284).
- 82.3% of studies were single-country, 7.4% were multi-country, and 10.3%
  had no reported location.

## Limitations

This project analyses a fixed download of the top 1,000 ClinicalTrials.gov
search results, not every Type 2 diabetes study in the registry. Results may
be affected by incomplete records, registry update timing, and the search-result
selection. They should not be interpreted as causal findings or as evidence of
actual participant representation.