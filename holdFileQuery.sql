SELECT orders.ordTransID, orders.ordID, orders.ordName, orders.ordLastName, orders.ordAddress, orders.ordAddress2, orders.ordState, orders.ordZip, orders.ordPhone, cart.cartProdID	
	FROM orders
		INNER JOIN cart
			ON orders.ordID = cart.cartOrderID
				WHERE cartProdID = 'BBQ08' AND ordStatus='5'