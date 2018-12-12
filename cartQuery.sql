SELECT cartOrderID, cartProdID from cart
WHERE (cartProdID = 'BBQ04' or cartProdID = 'BBQ08')
INTERSECT
SELECT ordID FROM orders
WHERE ordStatus ='5'