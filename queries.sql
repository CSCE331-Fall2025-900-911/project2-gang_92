-- 1: Get low calorie options
SELECT item_name, calories
    FROM menu_items
    WHERE calories < 250
    ORDER BY calories ASC;

-- 2: Get items low in stock and their amount
SELECT *
    FROM inventory
    WHERE item_amount < 50
    ORDER BY item_unit, item_amount ASC;

-- 3: Get order info for order before noon
SELECT o.order_id, o.total_price, o.purchase_time, omi.customization, omi.quantity, mi.item_name
    FROM orders o
    JOIN orders_menu_items omi ON o.order_id = omi.order_id
    JOIN menu_items mi ON omi.menu_item_id = mi.item_id
    WHERE o.purchase_time::time < '12:00:00';

-- 4: Get value items
SELECT item_name, price
    FROM menu_items
    WHERE price < 5.5
    ORDER BY price ASC;

-- 5: Get total revenue from all orders
SELECT SUM(total_price)
    FROM orders;

-- 6: Get total revenue for a single menu_item
SELECT mi.item_name, SUM(o.total_price) AS item_revenue
    FROM orders o
    JOIN orders_menu_items omi ON o.order_id = omi.order_id
    JOIN menu_items mi ON omi.menu_item_id = mi.item_id
    GROUP BY mi.item_name
    ORDER BY item_revenue DESC;

-- 7: Get total number of orders and its avg price
SELECT COUNT(*), AVG(total_price)
    FROM orders;

-- 8: Get number of orders for menu items
SELECT mi.item_name, SUM(omi.quantity) AS item_count
    FROM orders o
    JOIN orders_menu_items omi ON o.order_id = omi.order_id
    JOIN menu_items mi ON omi.menu_item_id = mi.item_id
    GROUP BY mi.item_name
    ORDER BY item_count DESC;

-- 9: Get busiest hours of day
SELECT EXTRACT(HOURS FROM purchase_time) AS hr, COUNT(*) AS order_count
    FROM orders
    GROUP BY hr
    ORDER BY order_count DESC;

-- 10: Get 10 largest orders
SELECT *
    FROM orders
    ORDER BY total_price DESC
    LIMIT 10;

-- 11: Get liquid ingredient info
SELECT *
    FROM inventory
    WHERE item_unit = 'gal';

-- 12: Get orders with customization added
SELECT o.order_id, o.total_price, o.customer_name, o.purchase_time, omi.menu_item_id, omi.customization, omi.quantity
    FROM orders o
    JOIN orders_menu_items omi ON o.order_id = omi.order_id
    WHERE omi.customization != '';

-- 13: Get top 10 highest earning weeks
SELECT DATE_TRUNC('day', o.purchase_time)::date AS day, SUM(o.total_price) AS order_total 
    FROM orders o
    GROUP BY day
    ORDER BY order_total DESC
    LIMIT 10;

--14: Total number of sales and count of orders at each hour
SELECT EXTRACT(HOUR FROM purchase_time) AS hour_of_day,COUNT(*) AS order_count, SUM(total_price) AS total_sales
    FROM orders
    GROUP BY EXTRACT(HOUR FROM purchase_time)
    ORDER BY hour_of_day;