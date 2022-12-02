CREATE OR REPLACE VIEW v_person_male AS
    SELECT * FROM person WHERE gender = 'male';

CREATE OR REPLACE VIEW v_person_female AS
    SELECT * FROM person WHERE gender = 'female';

-- SELECT * FROM v_person_female;
-- SELECT * FROM v_person_male;
