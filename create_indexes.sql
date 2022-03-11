CREATE INDEX index_P1_part_name
ON part_nyc(part_number);

CREATE INDEX index_P1_supplier
ON part_nyc(supplier);

CREATE INDEX index_P1_color
ON part_nyc(color);

CREATE INDEX index_P1_on_hand
ON part_nyc(on_hand);

CREATE INDEX index_P2_part_name
ON part_sfo(part_number);

CREATE INDEX index_P2_supplier
ON part_sfo(supplier);

CREATE INDEX index_P2_color
ON part_sfo(color);

CREATE INDEX index_P2_on_hand
ON part_sfo(on_hand);

CREATE INDEX index_supplier_id
ON supplier(supplier_id);

CREATE INDEX index_supplier_name
ON supplier(supplier_name);

CREATE INDEX index_color_id
ON color(color_id);

CREATE INDEX index_color_name
ON color(color_name);
