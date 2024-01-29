DELIMITER //
CREATE FUNCTION obtener_paginas()
RETURNS INT READS SQL DATA
BEGIN
SET @paginas = (SELECT (ROUND (RAND() * 100) *4 ));
RETURN @paginas;
END//
DELIMITER //
CREATE FUNCTION obtener_ventas()
RETURNS INT READS SQL DATA
BEGIN
SET @paginas = (SELECT (ROUND (RAND() * 100) * 6 ));
RETURN @paginas;
END//


DELIMITER ;

UPDATE libros SET pagina = obtener_paginas();
UPDATE libros SET pagina = obtener_ventas();


 SELECT AVG(stock) FROM libros; -- 10.0000


 SET @Ppromedio = (SELECT AVG(stock) FROM libros);
 SELECT autor_id FROM libros GROUP BY autor_id HAVING SUM(stock) > (SELECT AVG(stock) FROM libros);

