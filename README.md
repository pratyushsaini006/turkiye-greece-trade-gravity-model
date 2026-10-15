# Trade, Distance & Diplomacy: A Gravity Model Analysis of Greece–Türkiye Economic Relations

## Overview
This repository documents an undergraduate empirical research project examining Turkish exports to Greece over 2005–2024. The study considers economic, tariff, military-expenditure, and political-stability variables in a modified gravity-model framework.

## Research question
How are economic conditions, tariff measures, military expenditure, and political stability associated with Turkish exports to Greece?

## Data
`data/gravity_model_data.csv` contains 20 annual observations extracted from the `Raw Data` sheet of the supplied results workbook. Variables are:

- `Year`: calendar year
- `lnET`: natural log of Turkish exports to Greece
- `lnGDP_T`, `lnGDP_G`: logged GDP for Türkiye and Greece
- `lnPC_T`, `lnPC_G`: logged GDP per capita for Türkiye and Greece
- `lnME_T`, `lnME_G`: logged military expenditure measures
- `lnTariff_T`, `lnTariff_G`: logged tariff measures
- `PSI_T`, `PSI_G`: political stability indices in levels

The source workbook's variable names are retained to avoid silently changing definitions. The original source URLs, units, transformations, and any data revisions should be documented before this dataset is treated as fully reproducible.

## Methods reported in the original paper
The paper reports pooled OLS, fixed-effects, and random-effects estimates, and reports using likelihood-ratio, Breusch–Pagan LM, and Hausman tests for model selection.

**Important methodological qualification:** the extracted dataset has one observation per year for a single Türkiye–Greece dyad (20 annual observations). That is not, by itself, a conventional multi-unit panel. The reported panel estimators and model-selection tests therefore need to be independently verified before being presented as valid results. The workbook also reports identical coefficient estimates across the three estimators. This repository does not treat those estimates as independently reproduced.

## Reproducibility status
This is a reconstruction starting point, not a completed replication. The original R script is not currently available. `scripts/inspect_data.R` performs basic data checks and documents the limitations; it does not claim to reproduce the original regression tables.

## Repository structure
- `data/gravity_model_data.csv` — cleaned annual data extracted from the workbook
- `scripts/inspect_data.R` — data validation and exploratory checks
- `results/` — reserved for verified outputs
- `paper/` — reserved for the paper, if sharing is permitted

## Run
Open this repository in R or RStudio and run:

```r
source("scripts/inspect_data.R")
```

Required packages: `readr`, `dplyr`, and `ggplot2` are not required for the current script; it uses base R only.

## Limitations and next steps
1. Add source citations and definitions for every variable.
2. Verify the transformations and source data.
3. Reassess the econometric specification in light of the single-dyad time-series structure and small sample.
4. Only add regression tables after estimates can be reproduced and checked.
5. Clearly distinguish any new analysis from the original undergraduate submission.

## Research context
Undergraduate research project in Economics, NMIMS School of Economics, Navi Mumbai (2023–2026).

Research areas: international trade, political economy, econometrics, and geopolitical determinants of economic relations.
