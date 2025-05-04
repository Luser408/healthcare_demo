# My Healthcare Analytics Project

This project showcases a Looker-based analytics solution for healthcare data, featuring LookML models and dashboards built to analyze patient and operational metrics.

## Overview
This repository contains LookML code for a data model and dashboards designed to provide insights into healthcare datasets. It leverages the FHIR (Fast Healthcare Interoperability Resources) standard for structured healthcare data, connected to a BigQuery dataset.

## Setup Instructions
To use this project, you need a Looker instance and access to a BigQuery dataset with FHIR data (e.g., a public or custom dataset).

### Steps:
1. **Import the Project**:
   - Create a new project in your Looker instance.
   - Upload the LookML files from this repository to the Looker IDE.
   - Configure the model to connect to your BigQuery dataset (update the connection in `healthcare.model.lkml`).
2. **Connect to Data**:
   - Set up a BigQuery connection in Looker.
   - Use a FHIR-compatible dataset (e.g., a public dataset or your own).
3. **Deploy**:
   - Deploy the project in Looker’s production mode.
   - Explore the dashboards and run queries to verify functionality.

## Project Structure
The LookML model is organized into three main folders:
1. **Unnested Views**: Views for querying nested FHIR data using BigQuery’s UNNEST and JSON parsing.
2. **Simplified Views**: Flattened views for easier analysis of FHIR data.
3. **Realtime Views**: Views simulating real-time updates for dynamic healthcare metrics.

## Dashboards
The project includes two dashboards:
1. **Operations Overview**: Visualizes key operational metrics, such as patient encounters and resource utilization.
   - Example: [Operations Overview Screenshot](dashboards/ops_1.png)
2. **Condition Lookup**: Displays patient condition trends and analytics.
   - Example: [Condition Lookup Screenshot](dashboards/cond_1.png)

## Data Source
The project is designed to work with FHIR-based datasets in BigQuery. You can use a public dataset or your own healthcare data with a compatible schema.

## Notes
- This project was built to demonstrate Looker’s capabilities for healthcare analytics.
- Customize the LookML and dashboards to fit your specific use case.