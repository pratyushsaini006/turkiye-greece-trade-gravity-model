# turkiye-greece-trade-gravity-model
An empirical study of Turkish exports to Greece, examining economic, institutional, and geopolitical determinants using a # Trade, Distance & Diplomacy: A Gravity Model Analysis of Greece–Türkiye Economic Relations

## Overview

This project investigates bilateral trade between Türkiye and Greece from 2005 to 2024 using a modified gravity model of international trade. It examines the relationship between Turkish exports to Greece and a set of economic, institutional, and geopolitical variables.

The study extends a conventional gravity-model framework by incorporating GDP per capita, tariff measures, military expenditure, and political stability to explore how economic fundamentals and geopolitical conditions relate to bilateral trade.

## Research Question

How are economic conditions, institutional factors, and geopolitical variables associated with Turkish exports to Greece?

## Data and Variables

**Dependent variable**
- Turkish exports to Greece.

**Explanatory variables**
- GDP of Türkiye and Greece.
- GDP per capita of both countries.
- Military expenditure as a percentage of GDP.
- Tariff measures for both countries.
- Political Stability Index for both countries.

The analysis covers 2005–2024. Most variables are log-transformed, while political stability indices are retained in levels because they can take negative values.

Geographic distance is excluded because it is constant for the bilateral country pair and cannot be separately identified alongside the intercept in the specified model.

## Econometric Methodology

The study compares three estimation approaches:

1. Pooled Ordinary Least Squares (OLS).
2. Fixed Effects.
3. Random Effects.

Model selection is examined using:

- Likelihood Ratio test.
- Breusch–Pagan Lagrange Multiplier test.
- Hausman specification test.

The original paper reports selecting the Random Effects specification, with Pooled OLS and Fixed Effects estimates used for comparison.

## Findings Reported in the Study

The paper reports that:

- GDP is positively associated with Turkish exports to Greece.
- Turkish GDP per capita has a negative estimated association, discussed in relation to a potential home-market absorption effect.
- Greek political stability is an important predictor in the reported estimates.
- Military expenditure has limited explanatory importance.
- Estimated tariff relationships are asymmetric across the two countries.

These findings describe associations in the estimated model and should not be interpreted as established causal effects.

## Research Skills

- International trade and political economy.
- Econometric modelling and panel-data methods.
- Statistical hypothesis testing and model specification.
- Quantitative research and interpretation of empirical results.

## Reproducibility

This repository is being developed to document the research workflow transparently. The underlying dataset, R scripts, software dependencies, and regression outputs will be added and verified as they become available.

Planned components:

- `data/` — data and source documentation.
- `scripts/` — data preparation, estimation, and diagnostic tests.
- `results/` — regression tables and diagnostic outputs.
- `paper/` — research paper, subject to sharing permissions.

## Limitations and Future Work

The study focuses on one bilateral country pair over a limited period. Further work should document the complete data pipeline, verify the panel structure and model specifications, and assess robustness to alternative estimation choices.

## Research Context

Undergraduate research project in Economics, NMIMS School of Economics, Navi Mumbai, 2023–2026.

**Research interests:** International trade, econometrics, political economy, and geopolitical determinants of economic relations.modified gravity model.
