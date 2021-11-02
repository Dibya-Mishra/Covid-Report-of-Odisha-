create database covid_19;
use covid_19;
CREATE TABLE all_districts (
    district_name VARCHAR(255) NOT NULL,
    confirmed INT,
    active_ INT,
    recovered INT,
    deceased INT
);
insert into all_districts 
values ("Angul", 18084,3463,14580,41);
insert into all_districts
values ("Balasore", 16202,1805,14292,100);
insert into all_districts
values ("Bargarh", 19180,4084,15052,44);
insert into all_districts (district_name,confirmed, active_, recovered,deceased)
values 
("Bhadrak", 10241, 1544, 8662, 31),
("Bolangir",15382,2287,13044,51),
("Boudh", 4556, 1500, 3040, 16)
;
insert into all_districts (district_name,confirmed, active_, recovered,deceased)
values 
("Cuttack" , 41378, 6677, 34547, 150),
("Deogarh", 2845, 597, 2240, 8),
("Dhenkanal", 6921, 851, 6040,30),
("Gajapati", 6177, 850, 5290, 36),
("Ganjam", 26266, 1625, 24370, 263),
("Jagatsinghapur", 11474, 1171, 10263, 40),
("Jajpur", 17435, 2420, 14987,27),
("Jharsuguda", 15781, 2701, 13050, 30),
("Kalahandi", 14712, 3192, 11468, 52),
("Kandhamal", 7041, 571, 6435, 35),
("Kendrapada", 10916, 879, 10006, 30),
("Kendujhar", 11893, 884, 10961, 46),
("Khordha", 82149, 13025, 68731, 383),
("Koraput", 9856, 1081, 8755, 20),
("Malkangiri", 6038, 496, 5512, 27),
("Mayurbhanj", 18772, 1733, 16945, 91),
("Nabarangpur", 12589, 2881, 9691, 15),
("Nayagarh", 9560, 1768, 7744, 46),
("Nuapada", 17729, 2011, 15682, 36),
("Puri", 22111, 3348, 18629, 131),
("Rayagada", 11459, 1177, 10212, 70),
("Sambalpur", 18472, 4184, 14205, 83),
("Subarnapur", 7060, 1172, 5866, 22),
("Sundergarh", 37650, 10121, 27318, 207)
;
use covid_19;
SELECT 
    *
FROM
    all_districts
ORDER BY district_name DESC;
