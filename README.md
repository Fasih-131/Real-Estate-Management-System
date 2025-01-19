# Real-Estate-Management-System
Introduction To Database Systems Project

## Database Planning
The planning of our Real Estate Management System database was carried out in several steps. The first step was identifying the main entities required for the project, which include: 
1.	Properties
2.	Leases
3.	Tenants
4.	Payments
5.	Maintenance Requests
6.	Agents

Next, we determined the attributes for each entity and identified the foreign keys for tables to ensure efficient data relationships. Afterward, we defined the system's essential functions, such as adding, editing, listing, and deleting data for all entities. Once these aspects were finalized, we proceeded to create the tables, ensuring they contained the necessary fields and relationships to manage the data effectively.

## Requirement Analysis

### System Definition
  - **Purpose:** The Real Estate Management System is designed to facilitate realtors and clients to swiftly rent and list properties and make their payments. Moreover it has a centralized database where all the                     information related to the properties are stored and handled. This information can be accessed by only the users that listed the corresponding property. Our system also offers admin access to                        maintain the system.
  - **Scope:** The Real Estate Management System is designed to provide complete tools for managing various features of real estate operations, including:
      1. Property Management: Users can edit, add, list, delete properties.
      2. Lease Management: Users can manage leases, track their start and end dates, and also see associated tenants with the properties.
      3. Tenant Management: Users can manage the tenant information including contact details and lease history.
      4. Payment Management: Users can track payments made by tenants and also link them to the appropriate lease and property.
      5. Maintenance Requests: Users can log, edit, and view maintenance requests and associate them with specific properties and tenants.
  - **Users:** There are multiple types of users including an admin, agents, the tenants, and the maintenance personelle (them and the tenants are the normal users).

### Requirement Gathering
#### Functional Requirements
  - The agent should be able to add, edit, and delete properties, tenants.
  - The user (tenant) should be able to add, edit, and delete leases.
  - The user (tenant) should be able to make payments and maintenance requests.
  - The users should be able to either sign up or log in.
  - An admin should be assigned.
  - The admin panel should allow only an admin to delete users, display analytics.

#### Non-functional Requirements
  - The website should be fast.
  - The website should be able to handle multiple users.
  - The website should swiftly login and sign-up.

## Conceptual Design
### Relational Data Model
![Relational Data Model](https://github.com/Fasih-131/Real-Estate-Management-System/blob/main/Real%20Estate%20Management%20System%20(1).png)

## Logical Design
### Logical Data Model
![Logical Data Model](https://github.com/Fasih-131/Real-Estate-Management-System/blob/main/logical_data_model.PNG)

## Physical Design
### Operational Data Model
![Operational Data Model](https://github.com/Fasih-131/Real-Estate-Management-System/blob/main/operational_data_model.PNG)

## Implementation & Testing
### DBMS Selection
The database management system that we selected for our project is MYSQL database, as it has many useful security and data integrity features, more of its benefits are listed below:
  1. Optimized for read-heavy workloads.
  2. Efficient query optimization
  3. Active developer community
  4. Built-in data encryption
  5. Supports large datasets
  6. User-friendly tools

### Prototyping
#### Objective
The prototype aims to provide a visual representation of the Real Estate Management System to test feasibility, gather feedback, and refine the final product/software.

#### Scope
The features and/or modules included in the prototype are:
- **Included:**
  1. Property Management (Add, Edit, Delete, List properties).
  2. Tenant Management (Add, Edit, Delete, List tenants).
  3. Lease Management (Basic lease form and listing).
  4. Payment Management (Basic payment form).
  5. Maintenance Request Management (Basic maintenance request form and listing).

- **Not Included**
  1. Advanced payment processing.
  2. Full maintenance request system.
  3. Reporting and analytics features.
 
#### User Interface (UI)
1. Homepage (Dashboard/Index)
2. Navigation Bar for modules
3. Forms
4. Tables
5. Listings
6. Admin Panel

#### Core Functionalities
The basic functionalitites listed implemented in the prototype are:
1. Add/Edit/Delete operations for Properties, Tenants, Leases, Payments, Maintenance Requests, Users (through admin panel).
2. Simple database connection for CRUD operations.
3. Login system for authentication.
4. Static design for styling (using CSS/Bootstrap).

#### Tools and Technologies Used
1. Frontend: HTML, CSS, BOOTSTRAP.
2. Backend: PHP.
3. Database: MySQL/MariaDB.

## Database Construction
After the physical design phase, the database was constructed using the MySQL Database Management System. This phase involved the following steps:
  - Schema Creation: The database schema was created based on the logical and operational data models. SQL queries were used to define the tables, attributes, constraints, and relationships.
  - Table Creation: Each entity (e.g., properties, tenants, leases, payments, maintenance_requests, users) was translated into a table with appropriate columns, data types, and constraints.
  - Foreign Key Relationships: Foreign keys were implemented to establish relationships between tables. For example:
    leases references properties and tenants.
    payments references leases.
maintenance_requests references properties and tenants.
users references roles such as admin, agent, or tenant.
Indexes: Indexes were added to frequently queried fields (e.g., property_id, tenant_id) to improve query performance.

## Data Population
This phase involved populating the database with test data to ensure its functionality and usability. Test data was inserted into the following tables:
  - Users: Admins, agents, tenants, and maintenance personnel.
  - Properties: Sample properties with details such as location, size, and price.
  - Leases: Lease agreements linking tenants to specific properties.
  - Payments: Payment records linked to leases.
  - Maintenance Requests: Logged maintenance requests associated with specific properties.
SQL scripts were used to automate the insertion of test data.

## Testing and Validation
Testing was conducted to verify the database’s performance, accuracy, and functionality. The key testing methods included:

Unit Testing: Each table and its CRUD operations were tested independently using SQL queries.
Integration Testing: Relationships between tables were tested by executing JOIN queries to ensure the integrity of foreign key constraints.
Functional Testing: Database functionality was tested by running the website’s modules and verifying data operations.
Stress Testing: The system was tested with multiple simultaneous queries to ensure it could handle concurrent users without performance degradation.

## Deployment
Once testing was successfully completed, the database was deployed in the project’s hosting environment. This phase involved:
  - Exporting the Schema: Exporting the database schema and test data using MySQL’s export tools.
  - Server Configuration: Setting up a web server (e.g., Apache) with PHP and MySQL to host the system.
  - Database Import: Importing the database schema and data into the server's MySQL instance.
  - Connection Testing: Testing the database connection with the application to ensure seamless integration.

## Maintenance
After deployment, database maintenance was planned to ensure the system’s longevity and efficiency. The key maintenance activities include:
  - Regular Backups: Automated backups of the database to prevent data loss.
  - Performance Monitoring: Monitoring query execution times and optimizing slow queries.
  - Data Validation: Regular checks to ensure data integrity and consistency.
  - Security Updates: Applying security patches to MySQL to protect against vulnerabilities.
  - Scalability Planning: Preparing the database for future growth by optimizing indexes and planning for horizontal scaling if required.
    
## Future Enhancements
As part of the database development life cycle, the following future enhancements were proposed:
  - Advanced Analytics: Integrating reporting tools to provide insights into property performance, tenant payments, and lease durations.
  - Payment Gateways: Implementing payment gateways for online rent payments.
  - Role-Based Access Control (RBAC): Enhancing security by restricting access to certain tables and operations based on user roles.
  - Automated Notifications: Adding triggers to send automated email or SMS reminders for lease renewals, payment due dates, or maintenance updates.
    
## Conclusion
The Real Estate Management System database was successfully developed and implemented following the database development life cycle. This structured approach ensured a robust, efficient, and scalable database design, meeting the functional and non-functional requirements of the project.

