-- 1: Get low calorie options
SELECT item_name
    FROM menu_items
    WHERE calories < 250
    ORDER BY calories ASC;

-- 2: Get items low in stock and their amount
SELECT *
    FROM inventory
    WHERE item_amount < 50
    GROUP BY unit
    ORDER BY item_amout ASC;

-- 3: Get order info for order before noon
SELECT items, price, customization
    FROM order_history
    WHERE purchase_time::time < '12:00:00';

-- 4: Get value items
SELECT item_name, price
    FROM menu_items
    WHERE price < 5.5
    ORDER BY price ASC;

-- 5: Get total revenue from all orders
SELECT SUM(price) AS total_revenue
    FROM order_history;

-- 6: Get total revenue for a single menu_item
SELECT menu_items_id, SUM(price) AS item_revenue
    FROM order_history
    GROUP BY menu_items_id
    ORDER BY item_revenue DESC;

-- 7: Get total number of orders and its avg price
SELECT COUNT(*) AS total_orders, AVG(price) AS avg_price
    FROM order_history;

-- 8: Get number of orders for menu items
SELECT menu_items_id, COUNT(*) AS total_orders
    FROM order_history
    GROUP BY menu_id
    ORDER BY total_orders;

-- 9: Get busiest hours of day
SELECT EXTRACT(HOURS FROM purchase_time) AS hr, COUNT(*) AS order_count
    FROM order_history
    GROUP BY hr
    ORDER BY order_count DESC;

-- 10: Get 10 largest orders
SELECT *
    FROM order_history
    ORDER BY price DESC
    LIMIT 10;

-- 11: Get liquid ingredient info
SELECT *
    FROM inventory
    WHERE item_unit = 'gal';

-- 12: Get orders with customization added
SELECT *
    FROM order_history
    WHERE customization != '';

-- 13: Get busiest days
SELECT TO_CHAR(purchase_time, 'YYYY-MM-DD') AS order_date, COUNT(*) AS order_count 
    FROM order_history
    GROUP BY order_date
    ORDER BY order_count DESC;