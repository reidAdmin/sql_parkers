UPDATE orders

SET orders.ordTrackNum = holdFile.trackingNumber, ordStatus = '6', ordStatusDate = CURRENT_TIMESTAMP

	FROM holdFile
			INNER JOIN orders
				ON holdFile.invoiceNumber = orders.ordID
							
