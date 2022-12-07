COMMENT ON TABLE person_discounts IS 'Table of personal discounts';
COMMENT ON COLUMN person_discounts.id IS 'Primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'Identificator of a person forigen key';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Identificator of a pizzeria forigen key';
COMMENT ON COLUMN person_discounts.discount IS 'Discount in percent at pizzeria for person';
