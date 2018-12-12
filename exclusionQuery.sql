SELECT * from holdFile

SELECT invoiceNumber, ground
FROM holdFile
WHERE ground LIKE '[0-9]%'

SELECT invoiceNumber, ground
FROM holdFile
WHERE ground NOT LIKE '[0-9]%'