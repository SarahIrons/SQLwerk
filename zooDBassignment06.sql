select*from tbl_care
select*from tbl_specialist
select*from tbl_species where species_name='penguin'

select specialist_fname, specialist_lname,specialist_contact,care_type,species_name
from tbl_specialist
inner join tbl_care
on tbl_specialist.specialist_id =tbl_care.care_specialist
inner join tbl_species
on tbl_care.care_id=tbl_species.species_care
where species_name='penguin'