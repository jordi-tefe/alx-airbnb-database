# 📊 Partitioning Report - Booking Table Optimization

## 🧪 Problem
The `Booking` table has grown large, causing slow performance for queries filtering by date (e.g., dashboard reports, booking histories).

## 🛠️ Solution
Partitioned the table by `start_date` into quarterly partitions for the year 2024.

### Partition Strategy:
```sql
PARTITION BY RANGE (start_date)
