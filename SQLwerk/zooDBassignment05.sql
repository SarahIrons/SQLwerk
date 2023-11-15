
SELECT species_name as 'Species Name:', nutrition_type as 'Nutrition Type:' from tbl_nutrition
INNER JOIN tbl_species ON tbl_nutrition.nutrition_id = tbl_species.species_nutrition;


