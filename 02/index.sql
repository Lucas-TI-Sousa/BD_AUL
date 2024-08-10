use exercicio_sql01;
DROP DATABASE IF EXISTS `exercicio_sql01`;
CREATE DATABASE IF NOT EXISTS `exercicio_sql01`;
USE `exercicio_sql01`;
DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `Sobrenome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 02
SELECT * FROM alunos;
INSERT INTO `alunos` (`id`, `nome`,`Sobrenome`) VALUES
  ('', 'Tomás','sousa'),
  ('', 'lucas','santos');

  -- 05
CREATE TABLE IF NOT EXISTS `cursos` (
    `id_curso` INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome_curso` VARCHAR(30) NOT NULL
    )ENGINE = InnoDB;
DROP TABLE IF EXISTS `cursos`;
-- 06
INSERT INTO `cursos` (`id_curso`, `nome_curso`) VALUES
    (1, 'Informática para Internet'),
    (2, 'Administração'),
    (3, 'Bombeiro Sivil');
-- 07
SELECT nome_curso FROM cursos;
-- 08
CREATE TABLE IF NOT EXISTS `clientes` (
    `id` INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(30) NOT NULL,
    `idade` INT(5) NOT NULL,
    `cidade` VARCHAR(30) NOT NULL
    )ENGINE = InnoDB;
DROP TABLE IF EXISTS `clientes`;
-- 09
INSERT INTO `clientes` (`id`, `nome`, `idade`, `cidade`) VALUES
   (1, 'lucas', '20', 'São Paulo'),
    (2, 'maria', '19', 'São José dos Campos'),
    (3, 'Carla', '25', 'Ribeirão Pires');
-- 12
INSERT INTO `pedidos` (`pedido_id`, `cliente_id`, `data_pedido`, `valor_total`) VALUES
   (1, 1, '2024-05-22 23:38:25', '102,99'),
    (2, 2, '2024-05-22 23:38:36', '425,25'),
    (3, 3, '2024-05-22 23:38:57', '63,78');  