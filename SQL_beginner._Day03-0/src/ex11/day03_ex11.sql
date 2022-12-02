UPDATE menu
SET price = ROUND(price - 0.1 * price)
WHERE pizza_name = 'greek pizza';
