CREATE SCHEMA inventory;

SET
    search_path TO inventory;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    qty REAL NOT NULL,
    updated_datetime TIMESTAMP NOT NULL
);

ALTER TABLE products REPLICA IDENTITY FULL;