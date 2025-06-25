# 📊 Streaming Behavior Dashboard

This project analyzes user watch behavior on a streaming platform using **SQL** for data transformation and **Power BI** for visualization. It identifies binge-watching patterns, most-watched genres, and total watch time per user.

---

## 🧠 Problem Statement

> How can we analyze streaming behavior to identify binge watchers, top genres, and content engagement patterns?

To answer this, we:
- Detect binge-watching sessions (3+ videos in a session with <30min gap)
- Find the most-watched genre per user
- Calculate total watch time
- Visualize all key metrics in an interactive Power BI dashboard

---

## 🛠 Tech Stack

- **SQL (MySQL)** – Data cleaning, session logic, aggregation
- **Power BI** – Interactive data visualization and KPI reporting
- **CSV Files** – SQL query outputs for Power BI import

---

## 📁 Project Structure

streaming-behavior-dashboard/
│
├── README.md
├── StreamingDashboard.pbix # Final dashboard
├── SQL/
│ ├── session_summary.sql # Binge session query
│ ├── genre_counts.sql # Genre popularity query
│ └── watch_time.sql # Total time watched
│
├── Data/
│ ├── binge_sessions.csv # From session_summary.sql
│ ├── genre_counts.csv # From genre_counts.sql
│ └── user_watch_time.csv # From watch_time.sql
│
├── screenshots/
│ └── dashboard-preview.png # Dashboard image for preview


---

## 📊 Dashboard Preview

![Dashboard Preview](screenshots/dashboard-preview.png)

---

## 📌 Key Metrics Visualized

- 🎯 **Total Watch Time** per user (minutes)
- 📺 **Binge-Watching Sessions** (3+ videos in a row)
- 🍿 **Top Genres Watched** per user
- 🧮 **Average Videos per Session**
- 🔄 **User Slicer** to filter by individual viewer

---

## 📦 Data Source

Mock data stored in `watch_history` with:
- `user_id`, `video_id`, `watch_time`, `video_genre`, `video_duration`

Output CSVs were created using SQL and used as Power BI inputs:
- `binge_sessions.csv`
- `genre_counts.csv`
- `user_watch_time.csv`

---

## 🧪 How to Use This Project

1. Run SQL queries on your own `watch_history` table (or use mock data)
2. Export the results to CSV
3. Load the CSVs into Power BI
4. Open `StreamingDashboard.pbix` and refresh the visuals

---

## 📄 Raw Data Tab 

The Power BI file also includes a second page with the original watch history table for reference.

---



