-- SQL Queries (25)

-- Basic Queries
/* 1 */ SELECT property_id, rent_amount FROM Leases;
/* 2 */ SELECT tenant_id, lease_start, lease_end, rent_amount FROM Leases;
/* 3 */ SELECT id, address, agent_id FROM Properties;
/* 4 */ SELECT COUNT(*) AS total_tenants FROM Tenants;
/* 5 */ SELECT MAX(rent_amount) AS highest_rent FROM Leases;

-- Conditional Queries
/* 6 */ SELECT * FROM Leases WHERE YEAR(lease_start) = 2025;
/* 7 */ SELECT tenant_id FROM Leases WHERE rent_amount > 1300;
/* 8 */ SELECT * FROM Properties WHERE property_price > 300000;
/* 9 */ SELECT * FROM Properties 
WHERE id NOT IN (SELECT property_id FROM Leases);
/* 10 */ SELECT * FROM Leases WHERE lease_end <= DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- Join Queries
/* 11 */ SELECT T.tenant_name, P.property_address 
FROM Tenants T 
JOIN Leases L ON T.tenant_id = L.tenant_id 
JOIN Properties P ON L.property_id = P. id;
/* 12 */ SELECT P.property_address, A.agent_name 
FROM Properties P 
JOIN Agents A ON P.agent_id = A.agent_id;
/* 13 */ SELECT L.lease_id, T.tenant_name, L.rent_amount 
FROM Leases L 
JOIN Tenants T ON L.tenant_id = T.tenant_id;
/* 14 */ SELECT DISTINCT A.agent_name 
FROM Agents A 
JOIN Properties P ON A.agent_id = P.agent_id 
JOIN Leases L ON P.id = L.property_id 
WHERE YEAR(L.lease_start) = 2025;
/* 15 */ SELECT T.tenant_name, L.lease_start, P. property_price 
FROM Tenants T 
JOIN Leases L ON T.tenant_id = L.tenant_id 
JOIN Properties P ON L.property_id = P. id;

-- Aggregation Queries
/* 16 */ SELECT AVG(rent_amount) AS avg_rent FROM Leases;
/* 17 */ SELECT agent_id, COUNT(*) AS total_properties 
FROM Properties 
GROUP BY agent_id;
/* 18 */ SELECT SUM(rent_amount) AS total_rent FROM Leases;
/* 19 */ SELECT YEAR(lease_start) AS lease_year, COUNT(*) AS total_leases 
FROM Leases 
GROUP BY lease_year;
/* 20 */ SELECT property_id, COUNT(*) AS tenant_count 
FROM Leases 
GROUP BY property_id;

-- Advanced Queries
/* 21 */ SELECT * 
FROM Leases 
WHERE rent_amount = (SELECT MAX(rent_amount) FROM Leases);
/* 22 */ ELECT * FROM Tenants 
WHERE tenant_id NOT IN (SELECT tenant_id FROM Leases);
/* 23 */ SELECT L.lease_id, A.agent_name 
FROM Leases L 
JOIN Properties P ON L.property_id = P.id 
JOIN Agents A ON P.agent_id = A.agent_id;
/* 24 */ SELECT property_id 
FROM Leases 
GROUP BY property_id 
HAVING COUNT(*) > 1;
/* 25 */ SELECT T.tenant_name, SUM(L.rent_amount) AS total_rent 
FROM Tenants T 
JOIN Leases L ON T.tenant_id = L.tenant_id 
GROUP BY T.tenant_name;
