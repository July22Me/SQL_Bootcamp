UPDATE menu SET price = (price - price*0.1)
WHERE menu.pizza_name = 'greek pizza';

SELECT * FROM menu WHERE menu.pizza_name = 'greek pizza'