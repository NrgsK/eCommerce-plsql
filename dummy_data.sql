-- Kategoriler
INSERT INTO category (category_id, category_name, description) VALUES (1, 'Giyim', 'Giyim �r�nleri');
INSERT INTO category (category_id, category_name, description) VALUES (2, 'Ayakkab�', 'Ayakkab� �r�nleri');

-- Alt Kategoriler
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (101, 1, 'Erkek Giyim', 'Erkek Giyim');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (102, 1, 'Kad�n Giyim', 'Kad�n Giyim');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (103, 1, '�ocuk Giyim', '�ocuk Giyim');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (104, 2, 'Erkek Ayakkab�', 'Erkek Ayakkab�');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (105, 2, 'Kad�n Ayakkab�', 'Kad�n Ayakkab�');
INSERT INTO sub_category (sub_cat_id, category_id, subcat_name, description) VALUES (106, 2, '�ocuk Ayakkab�', '�ocuk Ayakkab�');


-- Erkek Giyim �r�nleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (1, 1, 'Erkek T-Shirt', 49.99, 'Pamuklu Erkek T-Shirt', 100);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (2, 1, 'Erkek Kot Pantolon', 89.99, 'Rahat Kesim Kot Pantolon', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (3, 1, 'Erkek G�mlek', 59.99, 'Slim Fit Erkek G�mlek', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (4, 1, 'Erkek Ceket', 149.99, 'Klasik Erkek Ceket', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (5, 1, 'Erkek Kazak', 79.99, 'V Yaka Erkek Kazak', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (6, 1, 'Erkek �ort', 39.99, 'Yazl�k Erkek �ort', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (7, 1, 'Erkek Tak�m Elbise', 299.99, 'Slim Fit Tak�m Elbise', 20);

-- Kad�n Giyim �r�nleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (8, 1, 'Kad�n Elbise', 79.99, '�i�ek Desenli Elbise', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (9, 1, 'Kad�n Bluz', 39.99, '�nce Ask�l� Bluz', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (10, 1, 'Kad�n Pantolon', 69.99, 'Y�ksek Bel Pantolon', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (11, 1, 'Kad�n Etek', 49.99, 'Mini Etek', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (12, 1, 'Kad�n Ceket', 129.99, 'Klasik Kad�n Ceket', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (13, 1, 'Kad�n Kazak', 59.99, 'Bal�k�� Yaka Kad�n Kazak', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (14, 1, 'Kad�n H�rka', 69.99, 'Uzun H�rka', 50);

-- �ocuk Giyim �r�nleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (15, 1, '�ocuk Mont', 99.99, 'K��l�k �ocuk Montu', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (16, 1, '�ocuk T-Shirt', 29.99, 'Pamuklu �ocuk T-Shirt', 90);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (17, 1, '�ocuk Pantolon', 49.99, 'Rahat Kesim Pantolon', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (18, 1, '�ocuk Elbise', 39.99, '�i�ek Desenli Elbise', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (19, 1, '�ocuk �ort', 19.99, 'Yazl�k �ort', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (20, 1, '�ocuk Kazak', 39.99, 'V Yaka Kazak', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (21, 1, '�ocuk Etek', 29.99, 'K�sa Etek', 60);

-- Erkek Ayakkab� �r�nleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (22, 2, 'Erkek Spor Ayakkab�', 119.99, 'Rahat Spor Ayakkab�', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (23, 2, 'Erkek Deri Ayakkab�', 149.99, '��k Deri Ayakkab�', 20);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (24, 2, 'Erkek Bot', 169.99, 'K��l�k Erkek Bot', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (25, 2, 'Erkek Sandalet', 59.99, 'Yazl�k Sandalet', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (26, 2, 'Erkek Terlik', 39.99, 'Rahat Terlik', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (27, 2, 'Erkek Ko�u Ayakkab�s�', 129.99, 'Spor Ko�u Ayakkab�s�', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (28, 2, 'Erkek G�nl�k Ayakkab�', 99.99, 'G�nl�k Kullan�m Ayakkab�s�', 50);

-- Kad�n Ayakkab� �r�nleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (29, 2, 'Kad�n Topuklu Ayakkab�', 99.99, 'K�rm�z� Topuklu Ayakkab�', 25);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (30, 2, 'Kad�n Spor Ayakkab�', 89.99, 'Spor Ayakkab�', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (31, 2, 'Kad�n Babet', 49.99, 'Rahat Babet', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (32, 2, 'Kad�n Sandalet', 69.99, 'Yazl�k Sandalet', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (33, 2, 'Kad�n Bot', 139.99, 'K��l�k Kad�n Bot', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (34, 2, 'Kad�n �izme', 159.99, 'Deri �izme', 20);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (35, 2, 'Kad�n Terlik', 39.99, 'Ev Terli�i', 70);

-- �ocuk Ayakkab� �r�nleri
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (36, 2, '�ocuk Sandalet', 59.99, 'Renkli �ocuk Sandalet', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (37, 2, '�ocuk Bot', 79.99, 'K��l�k �ocuk Botu', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (38, 2, '�ocuk Spor Ayakkab�', 69.99, 'Rahat Spor Ayakkab�', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (39, 2, '�ocuk Terlik', 29.99, 'Rahat �ocuk Terli�i', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (40, 2, '�ocuk �izme', 99.99, 'Su Ge�irmez �izme', 20);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (41, 2, '�ocuk Babet', 39.99, 'Renkli �ocuk Babedi', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (42, 2, '�ocuk Ko�u Ayakkab�s�', 79.99, 'Spor Ko�u Ayakkab�s�', 50);

-- Ekstra �r�nler 
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (43, 1, 'Kad�n Tunik', 59.99, 'Desenli Kad�n Tunik', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (44, 1, 'Erkek G�mlek', 69.99, 'Slim Fit G�mlek', 50);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (45, 1, 'Kad�n Ceket', 99.99, 'Klasik Kad�n Ceket', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (46, 2, 'Kad�n G�nl�k Ayakkab�', 89.99, 'Rahat G�nl�k Ayakkab�', 30);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (47, 2, 'Erkek Ko�u Ayakkab�s�', 109.99, 'Rahat Ko�u Ayakkab�s�', 60);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (48, 2, '�ocuk Bot', 69.99, 'Su Ge�irmez Bot', 70);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (49, 2, 'Erkek Sandalet', 49.99, 'Yazl�k Erkek Sandalet', 40);
INSERT INTO product (product_id, category_id, product_name, price, description, quantity) VALUES (50, 2, 'Kad�n Babet', 39.99, 'Rahat Kad�n Babet', 50);
