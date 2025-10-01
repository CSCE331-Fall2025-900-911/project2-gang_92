-- \i path_to_file.sql
\copy orders(order_id, total_price, customer_name, purchase_time) FROM 'orders.csv' DELIMITER',' CSV HEADER;
\copy orders_menu_items(order_id, menu_item_id, customization, quantity) FROM 'orders_menu_items.csv' DELIMITER',' CSV HEADER;