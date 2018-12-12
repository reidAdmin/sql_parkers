SELECT invoiceNumber, trackingNumber
	FROM holdFile
		INNER JOIN orders
			ON orders.ordID = holdFile.invoiceNumber
				WHERE trackingNumber IS NULL