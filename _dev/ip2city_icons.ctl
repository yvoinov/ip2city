LOAD DATA
INFILE './ip2city_icons.dat'
INTO TABLE ip2city_country_icons
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(
 id SEQUENCE(MAX,1),
 country CHAR(10),
 name CHAR(100),
 fname CHAR, 
 image LOBFILE(fname) TERMINATED BY EOF
)
