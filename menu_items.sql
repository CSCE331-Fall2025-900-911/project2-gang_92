BEGIN;

INSERT INTO menu_items (item_name, price, recipe, calories) VALUES
('Green Tea', 4.25, $$
- 1/3 cup uncooked tapioca pearls
- 3/4 tsp matcha green tea powder
- 2 cups water
- 1 cup milk$$, 200),
('Oolong Tea', 5.25, $$
- 1 cup water
- 1 tsp oolong tea leaves
- honey, lemon, or milk$$, 190),
('Classic Milk Tea', 5.25, $$
- 2 bags black tea (Assam/Ceylon) steeped in 1 cup hot water
- 3 tbsp simple syrup (adjust to taste)
- 3/4 cup whole milk or non-dairy alternative
- Cooked tapioca pearls (1/3 cup)$$, 320),
('Jasmine Green Milk Tea', 5.45, $$
- 1 cup strong jasmine green tea, chilled
- 3 tbsp creamer or milk
- 2 tbsp honey or syrup
- 1/3 cup tapioca pearls$$, 290),
('Brown Sugar Boba Latte', 6.25, $$
- 1/3 cup boba coated in caramelized brown sugar syrup
- 3/4 cup cold whole milk
- Optional: dash of sea salt on top$$, 420),
('Taro Milk Tea', 5.95, $$
- 1 cup black tea or hot water
- 3 tbsp taro powder (or mashed taro)
- 1/2 cup milk/cream
- 1/3 cup tapioca pearls$$, 380),
('Thai Milk Tea', 5.75, $$
- 1 cup Thai tea, strongly brewed
- 2–3 tbsp condensed milk
- Splash of evaporated milk over ice
- 1/3 cup boba pearls$$, 430),
('Matcha Latte (Boba)', 5.95, $$
- 1–2 tsp matcha whisked with 2 oz hot water
- 3/4 cup milk (dairy or oat)
- 1–2 tbsp syrup to taste
- 1/3 cup pearls$$, 260),
('Honeydew Milk Tea', 5.65, $$
- 1 cup green tea or water
- 3 tbsp honeydew powder or fresh puree
- 1/2 cup milk/creamer
- 1/3 cup pearls$$, 300),
('Wintermelon Milk Tea', 5.45, $$
- 1 cup wintermelon syrup tea base
- 1/2 cup milk or creamer
- 1/3 cup tapioca pearls$$, 270),
('Hokkaido Caramel Milk Tea', 6.15, $$
- 1 cup roasted oolong/black tea
- 2 tbsp caramel or toffee syrup
- 1/2 cup creamy milk
- 1/3 cup pearls$$, 360),
('Okinawa Brown Sugar Milk Tea', 6.15, $$
- 1 cup black tea
- 2–3 tbsp Okinawa kokuto sugar syrup
- 1/2 cup milk
- 1/3 cup boba$$, 390),
('Coconut Milk Tea', 5.65, $$
- 1 cup black tea
- 1/2 cup coconut milk
- 1–2 tbsp syrup to taste
- 1/3 cup pearls$$, 310),
('Mango Green Tea (Boba)', 5.45, $$
- 1 cup green tea
- 1/4 cup mango puree or syrup
- Juice of 1/4 lime (optional)
- 1/3 cup boba or mango popping pearls$$, 210),
('Passionfruit Green Tea (Boba)', 5.45, $$
- 1 cup green tea
- 1/4 cup passionfruit syrup
- Optional: orange slice
- 1/3 cup pearls or popping boba$$, 200),
('Strawberry Milk Tea', 5.75, $$
- 1/2 cup strawberry puree/syrup
- 1/2 cup milk over ice
- Optional: light black tea base
- 1/3 cup pearls$$, 280);

COMMIT;
