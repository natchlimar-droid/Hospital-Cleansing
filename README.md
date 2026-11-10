# 🏥 Hospital Cleansing Tool

An in-browser, high-performance Data Cleansing & Data Quality profiling application tailored for hospital medical records and patient datasets, compliant with the Personal Data Protection Act (PDPA).

[![PDPA Compliant](https://img.shields.io/badge/PDPA-Compliant-success?style=flat-square)](https://github.com/natchlimar-droid)
[![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](LICENSE)
[![Zero Cloud Dependency](https://img.shields.io/badge/Privacy-100%25_In--Browser-brightgreen?style=flat-square)](https://github.com/natchlimar-droid)

---

## 🌟 Key Features

### 1. 🛡️ PDPA & Healthcare Data Protection
- **100% Client-Side Privacy**: Runs completely within the user's browser. Zero data upload or cloud transmission.
- **Automated PII Scanner**: Scans and identifies Sensitive Personal Data (Section 26 PDPA), including 13-digit Thai National ID, phone numbers, HN, names, diagnoses (ICD-10), and addresses.
- **Smart Masking Engine**:
  - Thai National ID: `1-2345-*****-**-9`
  - Phone: `081-***-5678`
  - Names & HN: `J***e`, `H***1`
- **Safe Multi-Mode Export**:
  - **Masked Export**: Asterisk replacement for all PII before sharing outside the hospital.
  - **Anonymized Export**: Salted tokenization (`ANON_xxxx`) for medical researchers & statistics.
  - **Raw Export with Audit Trail**: Full export with mandatory confirmation and logging.
- **Audit Logging**: In-browser tracking of every transformation, threshold deletion, and export action.

### 2. ⚡ Hospital Workflow Accelerators
- **1-Click Hospital Clean**: Automatic whitespace trimming, blank row removal, threshold filtering (<30% completeness), and PII detection in one step.
- **Thai Buddhist Era Date Standardizer (พ.ศ. ↔ ค.ศ.)**: Converts dates between Buddhist Era (2560-2575) and Common Era (2017-2032) with standardized formats (`YYYY-MM-DD` / `DD/MM/YYYY`).
- **Prefix & Full Name Splitter**: Separates Thai and English honorifics (*นาย, นาง, นางสาว, น.ส., ด.ช., ด.ญ., นพ., พญ., Mr., Mrs.*) into distinct `Prefix`, `First Name`, and `Last Name` columns.
- **Key-Based Deduplication**: Deduplicates records using unique identifiers (HN, CID, Visit ID) with options to keep first or latest occurrences.

### 3. 💾 Data Persistence & Disaster Recovery
- **IndexedDB Auto-Save**: Seamlessly persists working sheets in local browser storage every 1.5 seconds.
- **Crash Recovery**: Automatically alerts and restores unsaved drafts if the browser unexpectedly closes or crashes.

### 4. 📈 Interactive Data Quality Dashboard
- Real-time **Data Quality Score (%)** based on cell completeness.
- **Column Profiling**: Dynamic Chart.js distribution bar charts for categorical metrics (departments, genders) and statistical summaries for numeric values (Min, Max, Mean).
- **Column Health Breakdown Table**: Visual fill rate bars and missing count per column.

---

## 🚀 Getting Started

1. Clone or download this repository.
2. Open `Data Cleansing.html` in any modern web browser (Google Chrome, Microsoft Edge, Firefox, Safari).
3. No installation, server, or database setup required!
4. Click **🧪 Load Hospital Sample** in the sidebar to explore sample patient records and test all features immediately.

---

## 📁 Project Structure

```
├── Data Cleansing.html                             # Main application (HTML/CSS/JS single-file app)
├── คู่มือการใช้งาน Hospital Cleansing Tool (ฉบับสมบูรณ์).md # Full Thai documentation manual
├── Hospital Cleansing Tool.docx                    # Original user manual document
├── README.md                                       # Repository overview & quick start
└── .gitignore                                      # Git ignore specifications
```

---

## 📜 License
Released under the [MIT License](LICENSE).
