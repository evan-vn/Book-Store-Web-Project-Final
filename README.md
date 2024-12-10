# Bookstore Website

Welcome to the Bookstore Website project! This repository contains the code for an online bookstore application built using the Spring Boot framework.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)
- [Admin Login Details](#admin-login-details)
- [Customer Functionality](#customer-functionality)

## Overview

The Bookstore Website is an online platform where customers can browse and purchase books. The site includes two levels of admin access: admin and super admin. Super admins can create and modify admin accounts, while admins can manage the bookstore without user management capabilities.

## Prerequisites

Before you start, ensure you have the following installed:

- Spring Web
- Spring Data JPA
- MySQL Driver
- IDE (e.g., IntelliJ IDEA, Eclipse)

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/evan-vn/Book-Store-Web-Project-Final.git
   cd Book-Store-Web-Project-Final

2. **Database setup**:
   
- Import bookstoredb.sql 
- Update the src/main/resources/application.properties file: 
  spring.datasource.url=jdbc:mysql://localhost:3306/bookstoredb?useSSL=false 
  spring.datasource.username=root  
  spring.datasource.password=  
  spring.jpa.hibernate.ddl-auto=update  
3. **Running the application**:
  - Click run

4. **Admin Login Details**:
  -  Super Admin:  
    Email: superadmin@gmail.com  
    Password: password  
    Permissions: Can create and modify admin accounts  
 -  Admin:  
    Email: admin@gmail.com  
    Password: password  
    Permissions: Standard admin functionalities, cannot create or modify other admin accounts.  
5. **Customer Functionality**:
  -Registration: New users can register an account.  
  - Login: Existing customers can log in to their accounts.  
  - Browse Books: Customers can browse and search for books.  
  - Purchase Books: Customers can add books to their cart and proceed with the purchase.  
