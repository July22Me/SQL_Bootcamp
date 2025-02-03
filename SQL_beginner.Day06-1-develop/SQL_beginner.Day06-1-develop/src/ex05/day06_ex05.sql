COMMENT ON TABLE person_discounts IS 'personal discount';
COMMENT ON COLUMN person_discounts.id IS 'primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'person identifier';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'pizzeria identifier';
COMMENT ON COLUMN person_discounts.discount IS 'personal discount in at the pizzeria';
