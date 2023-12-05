CREATE TRIGGER formatar_cpf_before_insert
BEFORE INSERT ON paciente FOR EACH ROW
BEGIN
    DECLARE cpf_temp VARCHAR(14);
    SET cpf_temp = NEW.cpf;

    -- Verifica se o CPF já está no formato desejado
    IF CHAR_LENGTH(cpf_temp) = 14 THEN
        SET NEW.cpf = cpf_temp;
    ELSE
        SET NEW.cpf = 
            CONCAT(
                SUBSTRING(cpf_temp, 1, 3), '.', 
                SUBSTRING(cpf_temp, 4, 3), '.', 
                SUBSTRING(cpf_temp, 7, 3), '-', 
                SUBSTRING(cpf_temp, 10, 2)
            );
    END IF;
END; //