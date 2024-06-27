-- Kategoriler
INSERT INTO category (category_id, category_name, description) VALUES (1, 'Giyim', 'Giyim ürünleri');
INSERT INTO category (category_id, category_name, description) VALUES (2, 'Ayakkabý', 'Ayakkabý ürünleri');

-- Alt Kategoriler
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (101, 1, 'Erkek Giyim', 'Erkek Giyim');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (102, 1, 'Kadýn Giyim', 'Kadýn Giyim');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (103, 1, 'Çocuk Giyim', 'Çocuk Giyim');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (104, 2, 'Erkek Ayakkabý', 'Erkek Ayakkabý');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (105, 2, 'Kadýn Ayakkabý', 'Kadýn Ayakkabý');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (106, 2, 'Çocuk Ayakkabý', 'Çocuk Ayakkabý');


-- Erkek Giyim Ürünleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (1, 1, 'Erkek T-Shirt', 49.99, 'Pamuklu Erkek T-Shirt', 100);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (2, 1, 'Erkek Kot Pantolon', 89.99, 'Rahat Kesim Kot Pantolon', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (3, 1, 'Erkek Gömlek', 59.99, 'Slim Fit Erkek Gömlek', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (4, 1, 'Erkek Ceket', 149.99, 'Klasik Erkek Ceket', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (5, 1, 'Erkek Kazak', 79.99, 'V Yaka Erkek Kazak', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (6, 1, 'Erkek Þort', 39.99, 'Yazlýk Erkek Þort', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (7, 1, 'Erkek Takým Elbise', 299.99, 'Slim Fit Takým Elbise', 20);

-- Kadýn Giyim Ürünleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (8, 1, 'Kadýn Elbise', 79.99, 'Çiçek Desenli Elbise', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (9, 1, 'Kadýn Bluz', 39.99, 'Ýnce Askýlý Bluz', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (10, 1, 'Kadýn Pantolon', 69.99, 'Yüksek Bel Pantolon', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (11, 1, 'Kadýn Etek', 49.99, 'Mini Etek', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (12, 1, 'Kadýn Ceket', 129.99, 'Klasik Kadýn Ceket', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (13, 1, 'Kadýn Kazak', 59.99, 'Balýkçý Yaka Kadýn Kazak', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (14, 1, 'Kadýn Hýrka', 69.99, 'Uzun Hýrka', 50);

-- Çocuk Giyim Ürünleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (15, 1, 'Çocuk Mont', 99.99, 'Kýþlýk Çocuk Montu', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (16, 1, 'Çocuk T-Shirt', 29.99, 'Pamuklu Çocuk T-Shirt', 90);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (17, 1, 'Çocuk Pantolon', 49.99, 'Rahat Kesim Pantolon', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (18, 1, 'Çocuk Elbise', 39.99, 'Çiçek Desenli Elbise', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (19, 1, 'Çocuk Þort', 19.99, 'Yazlýk Þort', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (20, 1, 'Çocuk Kazak', 39.99, 'V Yaka Kazak', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (21, 1, 'Çocuk Etek', 29.99, 'Kýsa Etek', 60);

-- Erkek Ayakkabý Ürünleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (22, 2, 'Erkek Spor Ayakkabý', 119.99, 'Rahat Spor Ayakkabý', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (23, 2, 'Erkek Deri Ayakkabý', 149.99, 'Þýk Deri Ayakkabý', 20);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (24, 2, 'Erkek Bot', 169.99, 'Kýþlýk Erkek Bot', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (25, 2, 'Erkek Sandalet', 59.99, 'Yazlýk Sandalet', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (26, 2, 'Erkek Terlik', 39.99, 'Rahat Terlik', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (27, 2, 'Erkek Koþu Ayakkabýsý', 129.99, 'Spor Koþu Ayakkabýsý', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (28, 2, 'Erkek Günlük Ayakkabý', 99.99, 'Günlük Kullaným Ayakkabýsý', 50);

-- Kadýn Ayakkabý Ürünleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (29, 2, 'Kadýn Topuklu Ayakkabý', 99.99, 'Kýrmýzý Topuklu Ayakkabý', 25);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (30, 2, 'Kadýn Spor Ayakkabý', 89.99, 'Spor Ayakkabý', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (31, 2, 'Kadýn Babet', 49.99, 'Rahat Babet', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (32, 2, 'Kadýn Sandalet', 69.99, 'Yazlýk Sandalet', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (33, 2, 'Kadýn Bot', 139.99, 'Kýþlýk Kadýn Bot', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (34, 2, 'Kadýn Çizme', 159.99, 'Deri Çizme', 20);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (35, 2, 'Kadýn Terlik', 39.99, 'Ev Terliði', 70);

-- Çocuk Ayakkabý Ürünleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (36, 2, 'Çocuk Sandalet', 59.99, 'Renkli Çocuk Sandalet', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (37, 2, 'Çocuk Bot', 79.99, 'Kýþlýk Çocuk Botu', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (38, 2, 'Çocuk Spor Ayakkabý', 69.99, 'Rahat Spor Ayakkabý', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (39, 2, 'Çocuk Terlik', 29.99, 'Rahat Çocuk Terliði', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (40, 2, 'Çocuk Çizme', 99.99, 'Su Geçirmez Çizme', 20);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (41, 2, 'Çocuk Babet', 39.99, 'Renkli Çocuk Babedi', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (42, 2, 'Çocuk Koþu Ayakkabýsý', 79.99, 'Spor Koþu Ayakkabýsý', 50);

-- Ekstra Ürünler 
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (43, 1, 'Kadýn Tunik', 59.99, 'Desenli Kadýn Tunik', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (44, 1, 'Erkek Gömlek', 69.99, 'Slim Fit Gömlek', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (45, 1, 'Kadýn Ceket', 99.99, 'Klasik Kadýn Ceket', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (46, 2, 'Kadýn Günlük Ayakkabý', 89.99, 'Rahat Günlük Ayakkabý', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (47, 2, 'Erkek Koþu Ayakkabýsý', 109.99, 'Rahat Koþu Ayakkabýsý', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (48, 2, 'Çocuk Bot', 69.99, 'Su Geçirmez Bot', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (49, 2, 'Erkek Sandalet', 49.99, 'Yazlýk Erkek Sandalet', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (50, 2, 'Kadýn Babet', 39.99, 'Rahat Kadýn Babet', 50);
