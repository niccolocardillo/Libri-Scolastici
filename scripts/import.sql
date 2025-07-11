INSERT INTO LIBRI_RAW 
SELECT * FROM read_csv('./data/ALT*.csv.gz', header = true, decimal_separator = ',');

INSERT INTO SCUOLE_RAW 
SELECT * FROM read_csv('./data/SCUANAGRAFESTAT20252620250901.csv.gz', header = true, decimal_separator = ',');
