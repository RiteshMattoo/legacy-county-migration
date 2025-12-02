CREATE DATABASE IF NOT EXISTS county_migration;
USE county_migration;

CREATE TABLE IF NOT EXISTS property_master (
  county VARCHAR(50),
  parcel_id VARCHAR(50),
  owner_name VARCHAR(50),
  address VARCHAR(255),
  sale_price DECIMAL(15,2),
  sale_date DATE,
  tax_status VARCHAR(50),
  PRIMARY KEY (county, parcel_id)
);

#REJECTED TABLE

CREATE TABLE IF NOT EXISTS rejected_records (
  county VARCHAR(50),
  parcel_id VARCHAR(50),
  owner_name VARCHAR(50),
  address VARCHAR(255),
  sale_price VARCHAR(50),
  sale_date VARCHAR(50),
  tax_status VARCHAR(50),
  reason VARCHAR(255)
);