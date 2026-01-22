# S2.01.MYSQL_data_structure-Optica-

## Statement of the exercise
The optics store "Cul d'Ampolla" needs a system to manage their suppliers, glasses, customers, and sales. 

## Requirements:
Exercise 1 - Optics Management:
Suppliers: Store name, full address (street, number, floor, door, city, zip code, country), phone, fax, and NIF.
Brands & Suppliers: A brand is supplied by only one supplier, but a supplier can provide multiple brands.
Glasses: Store brand, prescription (left/right), frame type (rimless, plastic, or metallic), frame color, glass color (left/right), and price.
Customers: Store name, postal address, phone, email, registration date, and the "referring customer" (who recommended the store).
Sales: Track which employee sold which pair of glasses to which customer.

## Features
Relational Database Design: Implementation of One-to-Many and Many-to-Many relationships.
Recursive Relationships: Handling customer referrals (Self-referencing relationship).
Data Integrity: Implementation of Primary Keys, Foreign Keys, and Constraints.
Normalization: Logical separation of addresses, suppliers, and products to ensure data consistency.
Categorization: Using ENUMs or lookup tables for frame types and colors.

## Technologies
Database: MySQL / MariaDBModeling: MySQL Workbench (ER Diagram)
Language: SQL

## Installation & Execution
Clone the repository:Bashgit clone https://github.com/your-username/optica-cul-dampolla.git
Import to MySQL:Open your MySQL Workbench or preferred database client.
Import the .sql file located in the scripts/ folder.
Execute the script to create the schema and populate it with sample data.
Visualize the Model:Open the .mwb file in MySQL Workbench to view the EER Diagram.

## Demo
The SQL implementation allows for queries such as:Listing total sales by a specific employee.
Tracking which supplier provides a specific brand of glasses.
Identifying customers referred by other existing clients.

## Diagrams & Technical Decisions
Supplier-Brand Relationship: A $1:N$ relationship was chosen since a brand belongs to one supplier, but a supplier can handle multiple brands.
Self-Join (Customer): A nullable referred_by_id foreign key is used in the Customers table to represent recommendations.
Address Normalization: Addresses are structured to allow for detailed reporting by city or country.
Scalability: The structure allows for future expansion, such as adding inventory management or discount systems.
