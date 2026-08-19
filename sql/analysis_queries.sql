-- TrialScope SQL analyses
-- Run these queries in DuckDB after loading the processed dataset.

CREATE OR REPLACE TABLE trial_clean_data AS
SELECT *
FROM read_csv_auto('data/processed/trialscope_clean.csv');

-- Query 1: Count studies by current registry status
SELECT
    "Study Status" AS study_status,
    COUNT(*) AS trial_count
FROM trial_clean_data
GROUP BY "Study Status"
ORDER BY trial_count DESC;

-- Query 2: Compare eligibility patterns by study type
SELECT
    "Study Type" AS study_type,
    COUNT(*) AS trial_count,

    SUM(
        CASE
            WHEN "Sex" = 'ALL' THEN 1
            ELSE 0
        END
    ) AS open_to_all_sexes,

    ROUND(
        100.0 * SUM(
            CASE
                WHEN "Sex" = 'ALL' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        1
    ) AS all_sexes_percentage,

    SUM(
        CASE
            WHEN "Age" LIKE '%OLDER_ADULT%' THEN 1
            ELSE 0
        END
    ) AS includes_older_adults

FROM trial_clean_data
GROUP BY "Study Type"
ORDER BY trial_count DESC;