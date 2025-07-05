
---

### – Seeding the Database (DML)**

```markdown
# 🌱 Database Seeding – Airbnb Clone

This script provides sample data for development and testing of the Airbnb Clone backend system.

## 📁 File
- `seed.sql`: Contains `INSERT INTO` statements to populate each table with realistic data.

## 🧪 Sample Data Coverage
- **Users**: Includes hosts, guests, and one admin account
- **Properties**: Listed properties by hosts with full details
- **Bookings**: Guest bookings with various statuses
- **Payments**: Linked payments for confirmed bookings
- **Reviews**: Guest reviews with ratings and comments
- **Messages**: Sample communication between users

## 🔁 How to Use

1. Make sure you've already created the database schema using `schema.sql`.
2. Then run the following command:

```bash
mysql -u your_username -p airbnb_db < seed.sql
