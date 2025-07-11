INSERT INTO LIBRI_RAW 
SELECT * FROM read_csv('./data/ALTABRUZZO000020250709.csv.gz', header = true, decimal_separator = ',');

INSERT INTO LIBRI_RAW 
SELECT * FROM read_csv('./data/ALTBASILICATA000020250709.csv.gz', header = true, decimal_separator = ',');

INSERT INTO LIBRI_RAW 
SELECT * FROM read_csv('./data/ALTCALABRIA000020250709.csv.gz', header = true, decimal_separator = ',');

INSERT INTO LIBRI_RAW 
SELECT * FROM read_csv('./data/ALTCAMPANIA000020250709.csv.gz', header = true, decimal_separator = ',');

INSERT INTO LIBRI_RAW 
SELECT * FROM read_csv('./data/ALTTOSCANA000020250709.csv.gz', header = true, decimal_separator = ',');

INSERT INTO SCUOLE_RAW 
SELECT * FROM read_csv('./data/SCUANAGRAFESTAT20252620250901.csv.gz', header = true, decimal_separator = ',');
