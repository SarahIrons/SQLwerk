use db_zootest02
SELECT species_name, nutrition_id from tbl_nutrition
INNER JOIN tbl_species ON tbl_nutrition.nutrition_id = tbl_species.species_nutrition where nutrition_id between 2202 and 2206;

select*from tbl_nutrition
select*from tbl_species










