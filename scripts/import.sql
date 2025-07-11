INSERT INTO LIBRI 
SELECT * FROM read_csv('/data/ALTTOSCANA000020250709.csv', header = true, decimal_separator = ',')
