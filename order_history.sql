-- \i path_to_file.sql
\copy orders from 'orders.csv' CSV HEADER;
\copy orders_menu_items from 'orders_menu_items.csv' CSV HEADER;