-- Table creation script for H2 in-memory database

-- Create customer table
CREATE TABLE customer (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create transaction table
CREATE TABLE transaction (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Insert sample customers
INSERT INTO customer (name) VALUES ('John Doe');
INSERT INTO customer (name) VALUES ('Jane Smith');
INSERT INTO customer (name) VALUES ('Michael Johnson');

-- Insert sample transactions for John Doe
INSERT INTO transaction (customer_id, amount, transaction_date) VALUES (1, 120.00, '2024-06-01 12:00:00');
INSERT INTO transaction (customer_id, amount, transaction_date) VALUES (1, 70.00, '2024-06-10 15:30:00');

-- Insert sample transactions for Jane Smith
INSERT INTO transaction (customer_id, amount, transaction_date) VALUES (2, 50.00, '2024-06-05 09:00:00');
INSERT INTO transaction (customer_id, amount, transaction_date) VALUES (2, 90.00, '2024-06-15 14:45:00');

-- Insert sample transactions for Michael Johnson
INSERT INTO transaction (customer_id, amount, transaction_date) VALUES (3, 80.00, '2024-06-03 10:20:00');
INSERT INTO transaction (customer_id, amount, transaction_date) VALUES (3, 150.00, '2024-06-20 11:00:00');
