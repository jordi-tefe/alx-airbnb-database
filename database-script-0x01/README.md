# 📘 Database Schema – Airbnb Clone

This file defines the relational database schema for an Airbnb-like application. The schema includes all necessary entities and relationships designed according to normalization principles up to 3NF.

## 📁 File
- `schema.sql`: Contains SQL `CREATE TABLE` statements to define the structure of the database.

## 🧱 Tables Included
- `User`: Stores user data (hosts, guests, admins)
- `Property`: Represents listings created by hosts
- `Booking`: Tracks reservations made by users
- `Payment`: Logs transactions related to bookings
- `Review`: Contains user-generated reviews and ratings
- `Message`: Stores messages exchanged between users

## 🔐 Constraints
- **Primary Keys**: UUIDs on all entities
- **Foreign Keys**: To enforce relationships (e.g., booking → property → user)
- **Enum Fields**: Used for `role`, `status`, and `payment_method`
- **Check Constraints**: Enforced on fields like `rating`
- **Indexing**: Applied on searchable fields like `email`, `property_id`, `booking_id`

## ⚙️ How to Use

1. Ensure MySQL server is running.
2. Create a blank database (e.g., `airbnb_db`).
3. Run the script:

```bash
mysql -u your_username -p airbnb_db < schema.sql
