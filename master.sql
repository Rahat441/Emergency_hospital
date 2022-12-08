CREATE DATABASE pets;
USE pets;

# Facility_ID_TABLE
create table facility_id_table(f_id int, f_name varchar(128), 
	f_address varchar(256), f_zip varchar(256));
insert into facility_id_table values(1,'New York Presbyterian Hospital',
	'520 E 70th St, New York, NY','10021');
insert into facility_id_table values(2,'NYC Health + Hospitals / Bellevue',
	'462 1st Ave, New York, NY','10016');
insert into facility_id_table values(3,'NYC Health + Hospitals / Metropolitan',
	'1901 1st Ave, New York, NY','10029');
insert into facility_id_table values(4,'NYC Health + Hospitals / Times Square',
	'701 7th Ave, New York, NY','10036');
insert into facility_id_table values(5,'Lenox Hill Hospital',
	'100 E 77th St, New York, NY','10075');
insert into facility_id_table values(6,'NYU Langone Health',
	'550 1st Ave, New York, NY','10016');
insert into facility_id_table values(7,'NYU Langone Hospital Brooklyn',
	'150 55th St, Brooklyn, NY','11220');
insert into facility_id_table values(8,'NYC Health + Hospitals / Harlem',
	'506 Lenox Ave, New York, NY','10037');
insert into facility_id_table values(9,'NYC Health + Hospitals / Lincoln',
	'234 E 149th St, The Bronx, NY','10451');
insert into facility_id_table values(10,'Maimonides Medical Center',
	'4802 10th Ave, Brooklyn, NY','11219');
insert into facility_id_table values(11,'The Mount Sinai Hospital',
	'1468 Madison Ave, New York, NY','10029');
insert into facility_id_table values(12,'Mount Sinai Beth Israel',
	'281 1st Ave, New York, NY','10003');
insert into facility_id_table values(13,'Mount Sinai West',
	'1000 10th Ave, New York, NY','10019');
insert into facility_id_table values(14,'NYC Health + Hospitals / Coney Island',
	'2601 Ocean Pkwy, Brooklyn, NY','11235');
# Facility_ID_TABLE
select * from facility_id_table;  


/* table for medical facility specialization */
/* specializations have been assigned at random */
create table facility_specialization_table(f_id int, spec_id int);
insert into facility_specialization_table values(1,1);
insert into facility_specialization_table values(1,2);
insert into facility_specialization_table values(1,3);
insert into facility_specialization_table values(1,4);
insert into facility_specialization_table values(1,6);
insert into facility_specialization_table values(1,7);
insert into facility_specialization_table values(1,8);
insert into facility_specialization_table values(1,11);

insert into facility_specialization_table values(2,2);
insert into facility_specialization_table values(2,3);
insert into facility_specialization_table values(2,4);
insert into facility_specialization_table values(2,9);
insert into facility_specialization_table values(2,10);
insert into facility_specialization_table values(2,11);

insert into facility_specialization_table values(3,1);
insert into facility_specialization_table values(3,4);
insert into facility_specialization_table values(3,5);
insert into facility_specialization_table values(3,6);
insert into facility_specialization_table values(3,8);
insert into facility_specialization_table values(3,9);
insert into facility_specialization_table values(3,10);

insert into facility_specialization_table values(4,1);
insert into facility_specialization_table values(4,2);
insert into facility_specialization_table values(4,3);
insert into facility_specialization_table values(4,4);
insert into facility_specialization_table values(4,6);
insert into facility_specialization_table values(4,7);
insert into facility_specialization_table values(4,8);
insert into facility_specialization_table values(4,9);
insert into facility_specialization_table values(4,10);
insert into facility_specialization_table values(4,11);

insert into facility_specialization_table values(5,1);
insert into facility_specialization_table values(5,2);
insert into facility_specialization_table values(5,3);
insert into facility_specialization_table values(5,4);
insert into facility_specialization_table values(5,5);
insert into facility_specialization_table values(5,6);
insert into facility_specialization_table values(5,7);
insert into facility_specialization_table values(5,8);
insert into facility_specialization_table values(5,9);
insert into facility_specialization_table values(5,10);
insert into facility_specialization_table values(5,11);

insert into facility_specialization_table values(6,1);
insert into facility_specialization_table values(6,3);
insert into facility_specialization_table values(6,4);
insert into facility_specialization_table values(6,5);
insert into facility_specialization_table values(6,6);
insert into facility_specialization_table values(6,7);
insert into facility_specialization_table values(6,8);
insert into facility_specialization_table values(6,9);
insert into facility_specialization_table values(6,11);

insert into facility_specialization_table values(7,2);
insert into facility_specialization_table values(7,3);
insert into facility_specialization_table values(7,4);
insert into facility_specialization_table values(7,5);
insert into facility_specialization_table values(7,7);
insert into facility_specialization_table values(7,8);
insert into facility_specialization_table values(7,10);
insert into facility_specialization_table values(7,11);

insert into facility_specialization_table values(8,1);
insert into facility_specialization_table values(8,2);
insert into facility_specialization_table values(8,3);
insert into facility_specialization_table values(8,4);
insert into facility_specialization_table values(8,5);
insert into facility_specialization_table values(8,6);
insert into facility_specialization_table values(8,7);
insert into facility_specialization_table values(8,8);
insert into facility_specialization_table values(8,10);
insert into facility_specialization_table values(8,11);

insert into facility_specialization_table values(9,1);
insert into facility_specialization_table values(9,2);
insert into facility_specialization_table values(9,3);
insert into facility_specialization_table values(9,4);
insert into facility_specialization_table values(9,5);
insert into facility_specialization_table values(9,6);
insert into facility_specialization_table values(9,7);
insert into facility_specialization_table values(9,8);
insert into facility_specialization_table values(9,9);
insert into facility_specialization_table values(9,10);
insert into facility_specialization_table values(9,11);

insert into facility_specialization_table values(10,2);
insert into facility_specialization_table values(10,3);
insert into facility_specialization_table values(10,4);
insert into facility_specialization_table values(10,5);
insert into facility_specialization_table values(10,6);
insert into facility_specialization_table values(10,7);
insert into facility_specialization_table values(10,8);
insert into facility_specialization_table values(10,9);
insert into facility_specialization_table values(10,10);

insert into facility_specialization_table values(11,1);
insert into facility_specialization_table values(11,3);
insert into facility_specialization_table values(11,4);
insert into facility_specialization_table values(11,7);
insert into facility_specialization_table values(11,10);
insert into facility_specialization_table values(11,11);

insert into facility_specialization_table values(12,1);
insert into facility_specialization_table values(12,2);
insert into facility_specialization_table values(12,3);
insert into facility_specialization_table values(12,4);
insert into facility_specialization_table values(12,5);
insert into facility_specialization_table values(12,6);
insert into facility_specialization_table values(12,7);
insert into facility_specialization_table values(12,8);
insert into facility_specialization_table values(12,9);
insert into facility_specialization_table values(12,10);
insert into facility_specialization_table values(12,11);

insert into facility_specialization_table values(13,4);
insert into facility_specialization_table values(13,6);
insert into facility_specialization_table values(13,7);
insert into facility_specialization_table values(13,8);
insert into facility_specialization_table values(13,9);
insert into facility_specialization_table values(13,11);

insert into facility_specialization_table values(14,1);
insert into facility_specialization_table values(14,3);
insert into facility_specialization_table values(14,5);
insert into facility_specialization_table values(14,7);
insert into facility_specialization_table values(14,9);
insert into facility_specialization_table values(14,11);


select * from facility_specialization_table;
/* table listing all relevent medical specializations */
/* only include specialties that are needed for emergency cases brought 
	in by ambulances */
create table specialization_id_table(spec_id int, specialization varchar(32));
insert into specialization_id_table values(1, 'Emergency Medicine');
insert into specialization_id_table values(2, 'Orthopedic Surgery');
insert into specialization_id_table values(3, 'Trauma Surgery');
insert into specialization_id_table values(4, 'Neurology');
insert into specialization_id_table values(5, 'Neurosurgery');
insert into specialization_id_table values(6, 'Cardiology');
insert into specialization_id_table values(7, 'Cardiothoracic Surgery');
insert into specialization_id_table values(8, 'Ophthalmology');
insert into specialization_id_table values(9, 'Ophthalmic Surgery');
insert into specialization_id_table values(10, 'Vascular Surgery');
insert into specialization_id_table values(11, 'Pediatric Surgery');

select * from specialization_id_table;

/* table for medical facility testing availible */
/* tests have been assigned at random */
create table facility_test_table(f_id int, test_id int);
insert into facility_test_table values(1,1);
insert into facility_test_table values(1,2);
insert into facility_test_table values(1,3);
insert into facility_test_table values(1,4);
insert into facility_test_table values(1,5);
insert into facility_test_table values(1,6);

insert into facility_test_table values(2,2);
insert into facility_test_table values(2,3);
insert into facility_test_table values(2,4);
insert into facility_test_table values(2,5);
insert into facility_test_table values(2,6);

insert into facility_test_table values(3,1);
insert into facility_test_table values(3,3);
insert into facility_test_table values(3,4);
insert into facility_test_table values(3,5);
insert into facility_test_table values(3,6);

insert into facility_test_table values(4,1);
insert into facility_test_table values(4,2);
insert into facility_test_table values(4,4);
insert into facility_test_table values(4,5);
insert into facility_test_table values(4,6);

insert into facility_test_table values(5,1);
insert into facility_test_table values(5,2);
insert into facility_test_table values(5,3);
insert into facility_test_table values(5,5);
insert into facility_test_table values(5,6);

insert into facility_test_table values(6,1);
insert into facility_test_table values(6,2);
insert into facility_test_table values(6,3);
insert into facility_test_table values(6,4);
insert into facility_test_table values(6,6);

insert into facility_test_table values(7,1);
insert into facility_test_table values(7,2);
insert into facility_test_table values(7,3);
insert into facility_test_table values(7,4);
insert into facility_test_table values(7,5);

insert into facility_test_table values(8,3);
insert into facility_test_table values(8,4);
insert into facility_test_table values(8,5);
insert into facility_test_table values(8,6);

insert into facility_test_table values(9,1);
insert into facility_test_table values(9,2);
insert into facility_test_table values(9,5);
insert into facility_test_table values(9,6);

insert into facility_test_table values(10,1);
insert into facility_test_table values(10,2);
insert into facility_test_table values(10,3);
insert into facility_test_table values(10,4);

insert into facility_test_table values(11,2);
insert into facility_test_table values(11,4);
insert into facility_test_table values(11,6);

insert into facility_test_table values(12,1);
insert into facility_test_table values(12,3);
insert into facility_test_table values(12,5);

insert into facility_test_table values(13,1);
insert into facility_test_table values(13,2);
insert into facility_test_table values(13,4);
insert into facility_test_table values(13,5);

insert into facility_test_table values(14,2);
insert into facility_test_table values(14,3);
insert into facility_test_table values(14,5);
insert into facility_test_table values(14,6);



/* table listing all relevent medical tests */
create table test_id_table(test_id int, test varchar(32));
insert into test_id_table values(1, 'X-ray');
insert into test_id_table values(2, 'Fluoroscopy');
insert into test_id_table values(3, 'CT Scan');
insert into test_id_table values(4, 'MRI');
insert into test_id_table values(5, 'PET scan');
insert into test_id_table values(6, 'Ultrasound');



/* table for availability of beds and patient traffic at medical facilities */
/* all facilities start out with 0 availabilities and no traffic */
create table availability_table(f_id int, traffic int, emergency int, 
    gen int, op_rooms int);
insert into availability_table values(1, 12, 12, 20, 2);
insert into availability_table values(2, 5, 3, 25, 1);
insert into availability_table values(3, 9, 19, 24, 3);
insert into availability_table values(4, 2, 2, 4, 0);
insert into availability_table values(5, 16, 12, 19, 5);
insert into availability_table values(6, 1, 0, 2, 0);
insert into availability_table values(7, 10, 3, 6, 0);
insert into availability_table values(8, 9, 4, 7, 3);
insert into availability_table values(9, 0, 9, 12, 3);
insert into availability_table values(10, 3, 8, 10, 2);
insert into availability_table values(11, 4, 4, 7, 1);
insert into availability_table values(12, 8, 11, 6, 4);
insert into availability_table values(13, 17, 13, 7, 10);
insert into availability_table values(14, 20, 8, 11, 7);


#QUERRY to Search name of facility with specified specialization
SELECT facility_id_table.f_name, specialization_id_table.specialization 
from facility_id_table
join facility_specialization_table
on facility_id_table.f_id = facility_specialization_table.f_id
join specialization_id_table
on specialization_id_table.spec_id = facility_specialization_table.spec_id
where specialization = 'Neurology' and facility_id_table.f_zip = '10016';


#QUERRY to Search name of facility with specified test
SELECT facility_id_table.f_name, test_id_table.test 
from facility_id_table
join facility_test_table
on facility_id_table.f_id = facility_test_table.f_id
join test_id_table
on test_id_table.test_id = facility_test_table.test_id
where test = 'CT scan' ;


#querry For availibility with hospital names
Select facility_id_table.f_name, availability_table.emergency, availability_table.gen, availability_table.op_rooms
from availability_table 
join facility_id_table
on facility_id_table.f_id = availability_table.f_id
Where f_name = 'Lenox Hill Hospital';


#Specialization And Test 
#Should use this query only to display final table after search by user in order of closest facilities that correspond to needed specialization(s) and test(s)
SELECT facility_id_table.f_name, facility_id_table.f_address, facility_id_table.f_zip, availability_table.traffic, availability_table.emergency, 
	availability_table.gen, availability_table.op_rooms 
from facility_id_table
join facility_specialization_table
on facility_id_table.f_id = facility_specialization_table.f_id
join specialization_id_table
on specialization_id_table.spec_id = facility_specialization_table.spec_id
join facility_test_table
on facility_id_table.f_id = facility_test_table.f_id
join test_id_table
on test_id_table.test_id = facility_test_table.test_id
join availability_table
on facility_id_table.f_id = availability_table.f_id
where specialization = 'Cardiology' and test = 'X-ray'
order by ABS(facility_id_table.f_zip-11226);

#delelting 
DELETE FROM facility_specialization_table WHERE f_id = 4;
DELETE FROM facility_specialization_table WHERE f_id = 1 and spec_id = 4;
DELETE FROM facility_test_table WHERE f_id = 1 and test_id = 4;

select * from availability_table;
