-- Create Customer table
CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  phone VARCHAR(11),
  date_of_birth DATE,
  email VARCHAR(50)
);

-- Create Address table
CREATE TABLE address (
  address_id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer(customer_id),
  address_type VARCHAR(100),
  description VARCHAR(200),
  lat DECIMAL(10, 2) CHECK (lat >= 0),
  lon DECIMAL(10, 2) CHECK (lon >= 0)
);

-- Create Sales table
CREATE TABLE sales (
  sales_id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer(customer_id),
  address_id INTEGER REFERENCES address(address_id),
  total_due DECIMAL(10, 2),
  sales_date DATE
);

-- Create product table
CREATE TABLE product (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  product_description VARCHAR(200),
  color VARCHAR(20),
  price DECIMAL(10, 2)
);

-- Create sale_details table
CREATE TABLE sale_details (
  detail_id SERIAL PRIMARY KEY,
  sales_id INTEGER REFERENCES sales(sales_id),
  product_id INTEGER REFERENCES product(product_id),
  qty INTEGER,
  unit_price DECIMAL(10, 2) CHECK (unit_price > 0),
  line_total DECIMAL(10, 2) CHECK (line_total > 0)
);

select*from product


