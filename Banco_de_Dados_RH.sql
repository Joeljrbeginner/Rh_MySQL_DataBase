   CREATE DATABASE rh;
   USE rh;
    
    
    CREATE TABLE empresa (
  id BIGINT AUTO_INCREMENT,
  setores VARCHAR(255),
   pj_pf VARCHAR(255),
   PRIMARY KEY (id)
    );
   INSERT INTO empresa (setores,pj_pf)
VALUES ("operacional","clt");

     INSERT INTO empresa (setores,pj_pf)
VALUES ("administrativo","mei");

   INSERT INTO empresa (setores,pj_pf)
VALUES ("manutenção", "autonomo");

SELECT * FROM empresa;
   
   
   CREATE TABLE colaboradores (
   
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(255),
  cargo VARCHAR(255),
  salario DECIMAL(10,2),
  data_admissao VARCHAR(255),
  idade INT,
  categoria_id BIGINT,
  PRIMARY KEY(id), 
  FOREIGN KEY(categoria_id) REFERENCES empresa(id)
  
);

INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("Jiraya", "Gerente",3500.00, "2022-01-01", 49,1);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("jose", " encanador",1500.00, "2022-02-03", 39,2);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("maria", "secretaria",1700.00, "2022-11-11", 20,1);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("Ana","encarregada",2500.00, "2022-20-02", 30,3);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("rosa", "lider",2000.00, "2022-30-05", 35,3);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("rafael", "mecanico",2500.00, "2022-02-13", 45,2);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("marcelo", "motorsta",2500.00, "2022-10-12",47,3);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("roberto", "montador",2000.00, "2022-06-05", 40,2);
INSERT INTO colaboradores ( nome, cargo, salario, data_admissao, idade,categoria_id)
VALUES ("marta", "rh",2500.00, "2022-20-20", 36,3);
 
SELECT * FROM colaboradores;
SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE idade > 20 AND idade < 40;

SELECT * FROM colaboradores 
WHERE nome LIKE "R%";

SELECT * FROM colaboradores
INNER JOIN  empresa 
ON empresa.id = colaboradores.categoria_id;

SELECT * FROM colaboradores
INNER JOIN  empresa 
ON empresa.id = colaboradores.categoria_id
WHERE empresa.id = 1;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET nome='João da Silva', cargo='Gerente' WHERE id=1;
-- DROP DATABASE rh;




       