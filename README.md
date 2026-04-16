# 📚 Online Bookstore Database System

A fully designed relational database system for managing an online bookstore.  
This project demonstrates real-world database concepts like normalization, relationships, transactions, triggers, and automation.

---

## 📌 Project Overview

The system is designed to efficiently manage:

- 📖 Books & Inventory  
- 👤 Users (Customers)  
- 🧑‍💼 Authors & Publishers  
- 🛒 Orders & Order Items  
- 💳 Payments  
- ⭐ Reviews  

---

## 🧱 Database Design

The database follows **3rd Normal Form (3NF)** ensuring:

- ✔ Data consistency  
- ✔ Reduced redundancy  
- ✔ Efficient querying  

### 🗂️ Tables

- Users  
- Books  
- Authors  
- Publishers  
- Genres  
- Orders  
- Order_Items  
- Payments  
- Reviews  

---

## 🔗 Relationships

- One user → many orders  
- One order → many books  
- One book → one author, genre, publisher  
- One order → one payment  
- Users → reviews on books  

---

## ⚙️ Features

### 🛍️ Core Features
- Browse and search books  
- Place and manage orders  
- Track order status  
- Manage inventory  
- Add reviews and ratings  

### 📊 Advanced SQL
- Complex joins  
- Aggregations  
- Revenue analysis  
- Customer insights  
- Best-selling books  

---

## 🔄 Automation & Logic

### ⚡ Triggers
- Auto-update stock  
- Prevent negative inventory  
- Update order totals  

### 🔁 Stored Procedures
- Restrict orders if payment pending > 30 days  

### 🧾 Views
- Customer order summary  
- Revenue per category  

### ⏰ Events
- Daily stock alerts  
- Monthly sales reports  

---

## 🧪 Sample Query

```sql
SELECT b.title, SUM(oi.quantity * oi.price) AS revenue
FROM Order_Items oi
JOIN Books b ON oi.book_id = b.book_id
GROUP BY b.title
ORDER BY revenue DESC
LIMIT 5;

---

## 🛠️ Tech Stack

- **Database:** MySQL  
- **Language:** SQL  
- **Tools:** MySQL Workbench, dbdiagram.io  

---

## 🚀 Getting Started

### 1️⃣ Clone Repository
```bash
git clone https://github.com/charan110604/Library-management-Database.git
cd Library-management-Database

2️⃣ Setup Database
CREATE DATABASE bookstore_db;
USE bookstore_db;

3️⃣ Import SQL File

Run the following file in MySQL:

OnlineBookstoreDB.sql

📈 Workflow
User Registration & Login
Browse / Search Books
Add to Cart & Place Order
Payment Processing
Order Fulfillment (Shipping & Delivery)
Reporting & Analytics

🎯 Key Highlights
✔ Fully normalized relational database (3NF)
✔ Real-world e-commerce use case
✔ Advanced SQL (Triggers, Views, Events)
✔ Handles both transactions and analytics
✔ Scalable and modular design

🔮 Future Improvements
🔗 Backend integration using Spring Boot
⚛️ Frontend using React.js
🤖 Book recommendation system
📊 Dashboard for analytics and reports
🔐 Role-based authentication & authorization
