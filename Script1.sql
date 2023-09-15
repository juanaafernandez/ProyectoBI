SELECT DISTINCT Title
FROM Album a;
SELECT *
FROM Customer c 
ORDER BY Country;
INSERT INTO MediaType (MediaTypeId, Name)
VALUES (6, 'CD');
SELECT *
FROM Customer c
WHERE Company IS NULL; 
SELECT Album.AlbumId, Album.Title, Artist.Name AS ArtistName
FROM Album
INNER JOIN Artist 
ON Album.ArtistId = Artist.ArtistId;
SELECT Track.TrackId, Track.Name, Album.Title
FROM Track 
LEFT JOIN Album
ON Track.AlbumId = Album.AlbumId;
SELECT Track.TrackId, Track.Name, Mediatype.Name AS MediaType
FROM Track
RIGHT JOIN MediaType
ON Track.MediaTypeId = Mediatype.MediaTypeId;
SELECT InvoiceLine.InvoiceLineId, InvoiceLine.UnitPrice, InvoiceLine.Quantity, Track.Milliseconds 
FROM InvoiceLine
FULL OUTER JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
ORDER BY Milliseconds DESC;
SELECT FirstName
FROM Customer
UNION
SELECT FirstName
FROM Employee;
SELECT *
FROM InvoiceLine
WHERE TrackId IN (
	SELECT Track.TrackId 
	FROM Track
	WHERE Track.Composer = 'Queen'
);
SELECT InvoiceId, Total 
FROM Invoice
ORDER BY Total DESC;
SELECT InvoiceId, Total
FROM Invoice
WHERE InvoiceId > 150 AND InvoiceId < 160;
SELECT InvoiceLineId, UnitPrice,
CASE 
	WHEN UnitPrice > 1 THEN 'Precio normal'
	WHEN UnitPrice < 1 THEN 'Promoción'
END AS TipoPrecio
FROM InvoiceLine;




