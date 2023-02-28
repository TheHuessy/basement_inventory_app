-- Creating the tables

DROP TABLE IF EXISTS items;

CREATE TABLE items (
  item_id SMALLSERIAL PRIMARY KEY,
  item_name VARCHAR(255) NOT NULL,
  item_subtype_name VARCHAR(255) NOT NULL,
  item_brand VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS store;

CREATE TABLE store (
  item_id SMALLSERIAL PRIMARY KEY,
  item_name VARCHAR(255) NOT NULL,
  quantity INTEGER,
  unit_type VARCHAR(255),
  vol_per_unit INTEGER,
    unit_vol INTEGER,
    location VARCHAR(255)
  );

DROP TABLE IF EXISTS item_type;

CREATE TABLE item_type (
    type_id SMALLSERIAL PRIMARY KEY,
        type_name VARCHAR(255) NOT NULL
      );

DROP TABLE IF EXISTS item_subtype;

CREATE TABLE item_subtype (
 subtype_id SMALLSERIAL PRIMARY KEY,
 type_id SMALLINT NOT NULL,
 subtype_name VARCHAR(255) NOT NULL,
 type_name VARCHAR(255) NOT NULL
);

-- Adding initial values to item_type and item_subtype tables
INSERT INTO item_type (
  type_name
) VALUES ('food'),
('toiletries'),
('household');

INSERT INTO item_subtype (
  type_id,
  subtype_name,
  type_name
) VALUES (1, 'canned', 'food'),
(1, 'dry', 'food'),
(1, 'oil', 'food'),
(1, 'beverage', 'food'),
(1, 'ingredient', 'food'),
(2, 'toothpaste', 'toiletries'),
(2, 'deo', 'toiletries'),
(2, 'shampoo', 'toiletries'),
(2, 'toilet paper', 'toiletries'),
(3, 'glass cleaner', 'household'),
(3, 'bleach', 'household'),
(3, 'paper towels', 'household');

-- Adding initial values to the items table
INSERT INTO items (
  item_name,
  item_subtype_name,
  item_brand
) VALUES ('Paper Towels', 'paper towels', 'Kirkland'),
('Toilet Paper', 'toilet paper', 'Kirkland'),
('Olive Oil', 'oil', 'Kirkland')
;
