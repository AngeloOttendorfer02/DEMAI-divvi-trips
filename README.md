# Divvy Realtime Analytics

## Project Overview

This project analyzes Divvy bike-sharing data to understand historical usage
patterns and to design a near real-time analytics pipeline using modern
data engineering technologies.

Data source: https://divvy-tripdata.s3.amazonaws.com/index.html

The project is developed as a Data Science & Data Engineering project
and follows a structured workflow:
1. Requirements engineering
2. Exploratory data analysis (EDA)
3. Batch data loading
4. Real-time streaming (Kafka & Spark)
5. Data persistence and visualization

---

## Stakeholders

The following stakeholders are considered:

- **Data Analyst**: Explores historical usage patterns
- **Operations Manager**: Monitors bike usage trends
- **Product Manager**: Evaluates member vs casual usage
- **System Owner**: Ensures reliability and scalability

---

## Functional Requirements

**FR1**: The system shall load historical Divvy bike trip data from CSV files.  
**FR2**: The system shall preprocess timestamps and compute trip durations.  
**FR3**: The system shall provide descriptive statistics of bike trips.  
**FR4**: The system shall visualize usage patterns and distributions.  
**FR5**: The system shall aggregate trips by user type (member vs casual).  
**FR6**: The system shall simulate real-time ingestion of bike trip data.  
**FR7**: The system shall process streaming data using Apache Spark.  
**FR8**: The system shall persist processed results in a database.  
**FR9**: The system shall expose analytics results via a dashboard.

---

## Non-Functional Requirements

**NFR1 (Performance)**: Streaming analytics shall update within seconds.  
**NFR2 (Scalability)**: The pipeline shall support increased data volumes.  
**NFR3 (Reliability)**: The system shall not lose data during processing.  
**NFR4 (Maintainability)**: Components shall be modular and loosely coupled.  
**NFR5 (Reproducibility)**: The project shall be reproducible via documentation or Docker.

---

## User Stories

### User Story 1 — Data Understanding
As a **data analyst**,  
I want to explore historical Divvy trip data,  
So that I can understand usage patterns and anomalies.

### User Story 2 — Usage Comparison
As a **product manager**,  
I want to compare member and casual riders,  
So that I can evaluate subscription adoption.

### User Story 3 — Operational Monitoring
As an **operations manager**,  
I want to monitor bike usage in near real-time,  
So that I can react to demand changes.

### User Story 4 — System Reliability
As a **system owner**,  
I want the pipeline to be reliable and reproducible,  
So that it can be maintained and extended.

---

## Current Project Stage

✔ Requirements engineering  
✔ Exploratory data analysis (EDA)  
⬜ Batch database loading  
⬜ Real-time streaming (Kafka & Spark)  
⬜ Dashboard visualization (Streamlit)
