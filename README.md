# Databricks SQL Medallion Pipeline

## Overview
Built an end-to-end data pipeline using Databricks SQL implementing Medallion Architecture (Bronze, Silver, Gold) on a smartphone usage dataset.

## Architecture
Raw CSV → Bronze → Silver → Gold

## Tech Stack
- Databricks SQL Warehouse
- Apache Spark (under the hood)
- Delta Lake

## Pipeline

### Bronze
- Raw data ingestion
- Added ingestion timestamp

### Silver
- Data cleaning and standardization
- Null handling (COALESCE)
- Deduplication

### Gold
- User-level aggregation
- Addiction analysis
- Stress vs usage insights

## Key Concepts
- Medallion Architecture
- Schema inference
- UTC timestamp handling
- Data quality validation

## How to Run
1. Upload dataset to Databricks
2. Run SQL scripts in order: Bronze → Silver → Gold
