# Data inspection for the Türkiye–Greece trade gravity-model project
# This script validates the extracted data; it does not reproduce the original
# pooled OLS / fixed-effects / random-effects tables.

data_path <- file.path("data", "gravity_model_data.csv")
if (!file.exists(data_path)) {
  stop("Could not find data/gravity_model_data.csv. Run this script from the repository root.")
}

dat <- read.csv(data_path, check.names = FALSE)

cat("Rows:", nrow(dat), "\n")
cat("Columns:", ncol(dat), "\n")
cat("Years:", min(dat$Year, na.rm = TRUE), "to", max(dat$Year, na.rm = TRUE), "\n\n")

cat("Column names:\n")
print(names(dat))

cat("\nMissing values by column:\n")
print(colSums(is.na(dat)))

cat("\nDuplicate years:\n")
print(dat$Year[duplicated(dat$Year)])

cat("\nSummary statistics:\n")
print(summary(dat))

numeric_vars <- setdiff(names(dat), "Year")
cat("\nCorrelation matrix (descriptive only; not causal evidence):\n")
print(round(cor(dat[, numeric_vars], use = "pairwise.complete.obs"), 3))

cat("\nImportant design note:\n")
cat(paste(
  "The data contain one annual observation for a single bilateral dyad.",
  "This is not a conventional multi-unit panel by itself.",
  "Do not interpret panel-estimator results as validated without checking",
  "the original data structure and estimation code.\n"
))

# The original workbook contains many regressors relative to only 20 observations.
# Avoid estimating a large model automatically: this can produce unstable
# coefficients and severe overfitting. Establish the specification first.
