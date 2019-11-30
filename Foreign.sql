ALTER TABLE child_table_name 
  ADD CONSTRAINT fk_name 
  FOREIGN KEY (child_column_name) 
  REFERENCES parent_table_name(parent_column_name) 
  ON DELETE CASCADE;
