SELECT india_food.id, india_food.first_ingredient, 
india_food.second_ingredient,
nutrition_data.first_ingredient,
nutrition_data.second_ingredient
FROM india_food
INNER JOIN nutrition_data 
ON (nutrition_data.first_ingredient = india_food.first_ingredient) 
OR (nutrition_data.second_ingredient = india_food.second_ingredient)