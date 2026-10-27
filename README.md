# OLA Ride Booking Analysis

A SQL and Power BI portfolio project exploring ride-booking performance, vehicle types, cancellations, payment methods, revenue, and customer/driver ratings.

## Project overview

This project uses booking-level data to answer operational and business questions about ride-hailing performance. The SQL script creates reusable views for common analyses.

## Tools

- MySQL
- SQL views and aggregate queries
- Power BI report source archive (included under `powerbi/`)

## Business questions explored

1. Which bookings were successful?
2. What is the average ride distance by vehicle type?
3. How many rides were cancelled by customers?
4. Which customers booked the most rides?
5. How many rides were cancelled by drivers for personal or car-related issues?
6. What are the maximum and minimum driver ratings for Prime Sedan?
7. Which rides used UPI?
8. What is the average customer rating by vehicle type?
9. What is the total booking value of successful rides?
10. What are the reasons for incomplete rides?

## Repository structure

```text
ola-ride-booking-analysis/
├── README.md
├── sql/
│   └── ola.sql
└── powerbi/
    └── ola_dashboard_source.zip
```

## How to run the SQL

1. Install MySQL Server and MySQL Workbench.
2. Open `sql/ola.sql` in MySQL Workbench.
3. Ensure your database contains a table named `BOOKINGS` with the columns referenced in the script.
4. Run the script. It creates the `OLA` database and views for the analyses.
5. Review each view using the `SELECT` statements included in the script.

> Important: the SQL file does not include the source dataset or table-creation/import steps. Add a data dictionary and safe, shareable sample data or instructions for obtaining the dataset so another person can reproduce the analysis.

## Power BI report

The `powerbi/ola_dashboard_source.zip` file preserves the dashboard source archive supplied with this project. It contains report-definition files for five pages: Overall, Vehicle Type, Revenue, Cancellation, and Ratings. It is not a standard `.pbix` file, so it may not open directly in Power BI Desktop. If you have the original `.pbix`, add that file instead (or alongside this archive) so reviewers can open the report.

## Current limitations and next improvements

- Add data import/table schema instructions and a data dictionary.
- Add data-quality checks for nulls, duplicates, and inconsistent booking statuses.
- Add advanced SQL analyses using CTEs, window functions, and month-over-month trends if the dataset has suitable date fields.
- Document findings with actual numbers from query results; do not add unverified business claims.
- Add dashboard screenshots to the README.
- Make the script safely rerunnable by handling existing views (for example, `CREATE OR REPLACE VIEW` where supported or dropping views first).

## Project status

Portfolio project in progress. Findings and metrics should be added after running the queries against the final dataset.
