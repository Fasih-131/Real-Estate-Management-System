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

## System Definition
  - **Purpose:** The Real Estate Management System is designed to facilitate realtors and clients to swiftly rent and list properties and make their payments. Moreover it has a centralized database where all the                     information related to the properties are stored and handled. This information can be accessed by only the users that listed the corresponding property. Our system also offers admin access to                        maintain the system.
  - **Scope:** The Real Estate Management System is designed to provide complete tools for managing various features of real estate operations, including:
      1. Property Management: Users can edit, add, list, delete properties.
      2. Lease Management: Users can manage leases, track their start and end dates, and also see associated tenants with the properties.
      3. Tenant Management: Users can manage the tenant information including contact details and lease history.
      4. Payment Management: Users can track payments made by tenants and also link them to the appropriate lease and property.
      5. Maintenance Requests: Users can log, edit, and view maintenance requests and associate them with specific properties and tenants.
  - **Users:** There are multiple types of users including an admin, agents, the tenants, and the maintenance personelle (them and the tenants are the normal users).

## Requirement Gathering
### Functional Requirements
  - The agent should be able to add, edit, and delete properties, tenants.
  - The user (tenant) should be able to add, edit, and delete leases.
  - The user (tenant) should be able to make payments and maintenance requests.
  - The users should be able to either sign up or log in.
  - An admin should be assigned.
  - The admin panel should allow only an admin to delete users, display analytics.

### Non-functional Requirements
  - The website should be fast.
  - The website should be able to handle multiple users.
  - The website should swiftly login and sign-up.

## System Design
### Relational Data Model
![Relational Data Model](https://github.com/Fasih-131/Real-Estate-Management-System/blob/main/Real%20Estate%20Management%20System%20(1).png)

### Logical Data Model
![Logical Data Model](https://github.com/Fasih-131/Real-Estate-Management-System/blob/main/logical_data_model.PNG)

### Operational Data Model
![Operational Data Model](https://github.com/Fasih-131/Real-Estate-Management-System/blob/main/operational_data_model.PNG)
