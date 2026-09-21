# PostgreSQL Data Warehouse & Analytics Project

## Overview
A personal implementation of a data warehouse built on **PostgreSQL**, following the **Medallion Architecture** (Bronze → Silver → Gold). It ingests raw CRM and ERP CSV extracts, cleans and standardizes them, and models them into a Kimball-style star schema for analytics and reporting.

This project is my own PostgreSQL port of a well-known Medallion Architecture data warehouse pattern originally built for SQL Server. Every script here has been rewritten from T-SQL to PostgreSQL/plpgsql — `COPY`/`\copy` instead of `BULK INSERT`, `plpgsql` procedures instead of T-SQL stored procedures, `EXTRACT(EPOCH FROM ...)` instead of `DATEDIFF`, `TO_DATE()` for the integer-encoded dates, and so on — as a way to practice both the warehouse-design pattern and cross-dialect SQL conversion.

## Architecture
- **Bronze layer** — raw, unmodified load of source CSVs (`source_crm`, `source_erp`)
- **Silver layer** — cleaned, standardized, deduplicated data
- **Gold layer** — business-ready star schema (`dim_customers`, `dim_products`, `fact_sales`) exposed as views

...
