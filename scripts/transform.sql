CREATE TABLE ISTITUTI AS
SELECT row_number() OVER (ORDER BY ANNOSCOLASTICO, CODICEISTITUTORIFERIMENTO) IstitutoId, 
       ANNOSCOLASTICO,
       CODICEISTITUTORIFERIMENTO, 
       DENOMINAZIONEISTITUTORIFERIMENTO, 
       COUNT(*) TOTALESCUOLE 
  FROM SCUOLE_RAW
GROUP BY ANNOSCOLASTICO, CODICEISTITUTORIFERIMENTO, DENOMINAZIONEISTITUTORIFERIMENTO
ORDER BY ANNOSCOLASTICO, CODICEISTITUTORIFERIMENTO;

CREATE TABLE SCUOLE AS
SELECT row_number() OVER (ORDER BY ANNOSCOLASTICO, REGIONE, PROVINCIA, CODICEISTITUTORIFERIMENTO, CODICESCUOLA) ScuolaId, 
       ANNOSCOLASTICO,
       CODICEISTITUTORIFERIMENTO, 
       CODICESCUOLA, 
       DENOMINAZIONESCUOLA, 
       INDIRIZZOSCUOLA, 
       CAPSCUOLA, 
       CODICECOMUNESCUOLA, 
       DESCRIZIONECOMUNE, 
       REGIONE, 
       PROVINCIA, 
       DESCRIZIONECARATTERISTICASCUOLA, 
       DESCRIZIONETIPOLOGIAGRADOISTRUZIONESCUOLA
  FROM SCUOLE_RAW
ORDER BY ANNOSCOLASTICO, REGIONE, PROVINCIA, CODICEISTITUTORIFERIMENTO, CODICESCUOLA;