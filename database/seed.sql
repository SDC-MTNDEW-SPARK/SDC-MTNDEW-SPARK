COPY Products(id, name, slogan, description, category, default_price)
FROM '/home/ubuntu/SDC_CSV/product.csv'
DELIMITER ','
CSV HEADER;

COPY Features(id, product_id, feature, value)
FROM '/home/ubuntu/SDC_CSV/features.csv'
DELIMITER ','
CSV HEADER;

COPY Styles(id, product_id, name, sale_price, original_price, default_style)
FROM '/home/ubuntu/SDC_CSV/styles.csv'
DELIMITER ','
CSV HEADER;

COPY Photos(id, style_id, url, thumbnail_url)
FROM '/home/ubuntu/SDC_CSV/photos.csv'
DELIMITER ','
CSV HEADER;

COPY Skus(id, style_id, size, quantity)
FROM '/home/ubuntu/SDC_CSV/skus.csv'
DELIMITER ','
CSV HEADER;

COPY Related_Products(id, curr_prod_id, related_prod_id)
FROM '/home/ubuntu/SDC_CSV/related.csv'
DELIMITER ','
CSV HEADER;