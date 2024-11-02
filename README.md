# Pet Salon Database

This repository contains the SQL code and documentation for the **Pet Salon Database**, a project developed to manage and track operations for a pet salon, including information on employees, customers, pets, and grooming services. This database was created using **MySQL** and managed through **DataGrip** as our development environment.

## Project Purpose

The purpose of this database is to provide a structured and efficient way to store and access essential salon data. It covers a range of functionalities required to support a pet salon, from managing employee schedules and customer records to recording pet grooming services. This project was developed as a team effort to ensure a thorough and well-rounded approach to database design.

## Team Members

- **Weronika Golden**
- **Anne Himes**
- **Andrew Tellez**
- **Nina Mason**

## Design Process

Before creating the database, our team went through multiple design phases to ensure a robust structure that meets the business needs of a pet salon:

1. **ER (Entity-Relationship) Modeling**: We began by identifying key entities and relationships essential to salon operations, ensuring that each aspect of the salon’s business was properly represented.
2. **Relational Modeling**: After defining the ER model, we converted it into relational models to define primary keys, foreign keys, and relationships that would guide our SQL table structure.
3. **Database Creation**: Finally, we implemented our relational models in MySQL, carefully constructing tables, constraints, and relationships to maintain data integrity and support future scalability.

## Database Structure

The Pet Salon Database includes several tables representing the core elements of the salon, including:

- **Employee**: Stores details about salon employees.
- **Customer**: Tracks customer information.
- **Pet**: Records details for each pet served at the salon.
- **Grooming Services**: Captures grooming services provided to each pet.

Additional tables were created to support relationships and manage services provided to each customer’s pets.

## SQL Code and Queries

The `Pet_Salon.sql` file contains all SQL commands for:

- **Creating Tables**: Defines the structure for each table and relationships.
- **Inserting Data**: Sample data was added for testing and demonstration purposes.
- **Custom Queries**: Includes key queries to retrieve information efficiently for various business scenarios, such as viewing upcoming appointments and service history.

## How to Use This Repository

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Run in DataGrip**: Open the `.sql` file in DataGrip or your preferred SQL IDE.
3. **Execute SQL**: Run the SQL code to create and populate the database tables.

We hope this project serves as a useful tool for managing the core operations of a pet salon.
