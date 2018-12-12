UPDATE orders
	SET ordStatus = '5', ordStatusDate = CURRENT_TIMESTAMP
		WHERE ordStatus = '3'
