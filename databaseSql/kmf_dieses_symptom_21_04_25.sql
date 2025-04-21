DELIMITER $$

CREATE PROCEDURE insert_symp_disease_map()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 400 DO
    INSERT INTO symp_disease_map (symptom_id, symptom_map_id, disease_id)
    VALUES (1, i, i + 1);
    SET i = i + 1;
  END WHILE;
END$$

DELIMITER ;

CALL insert_symp_disease_map();



