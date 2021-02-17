SELECT india_food.id, 
india_food.first_ingredient,
nutrition_data.first_ingredient
FROM india_food
INNER JOIN nutrition_data ON (lower(nutrition_data.first_ingredient) LIKE '%' || lower(india_food.first_ingredient) || '%')