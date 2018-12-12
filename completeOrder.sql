UPDATE orders
	SET ordStatus = '7', ordStatusDate = CURRENT_TIMESTAMP
		WHERE ordTrackNum IS NOT NULL AND ordStatus NOT LIKE '7' AND ordTrackNum != ''