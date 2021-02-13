CREATE TABLE india_food (
  id SERIAL PRIMARY KEY,
  ingredients TEXT,
  first_ingredient TEXT,
  second_ingredient TEXT,
  third_ingredient TEXT,
  fourth_ingredient TEXT
);

CREATE TABLE nutrition_data (
  id SERIAL PRIMARY KEY,
  ingredients TEXT,
  first_ingredient TEXT,
  second_ingredient TEXT
);
