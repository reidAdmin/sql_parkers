INSERT INTO holdFile (
	transactionID, invoiceNumber, recepientName, recepientAddress1, recepientAddress2, recepientCity, recepientState, recepientPostalCode, recepientPhoneNumber, residential, senderEmail, item)
	
SELECT orders.ordTransID, orders.ordID, orders.ordShipName + ' ' + orders.ordShipLastName AS recepientName, orders.ordShipAddress, orders.ordShipAddress2, orders.ordShipCity, orders.ordShipState, orders.ordShipZip, orders.ordShipPhone, orders.ordComLoc, orders.ordEmail,cart.cartProdID	
	FROM orders
		INNER JOIN cart
			ON orders.ordID = cart.cartOrderID
				WHERE (cartProdID = 'BBQ04' or cartProdID = 'BBQ08') AND ordStatus='5'