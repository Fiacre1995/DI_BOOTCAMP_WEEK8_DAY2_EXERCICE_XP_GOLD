-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	CREATE TABLE achats (
	
		id_achat SERIAL PRIMARY KEY,
		client_id SERIAL REFERENCES clients (client_id),
		item_id SERIAL REFERENCES items (item_id),
		quantity_purchased INTEGER NOT NULL
	)
	
	
	
	UPDATE achats A
	SET quantity_purchased = 5
	WHERE client_id IN (SELECT client_id FROM achats  INNER JOIN clients USING (client_id)INNER JOIN items USING (item_id) WHERE client_id = 1)
	
	SELECT * FROM clients
	
	INSERT INTO achats (client_id, item_id, quantity_purchased)
	VALUES (1, 1, 5)
	