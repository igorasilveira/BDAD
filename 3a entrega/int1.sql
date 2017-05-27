.mode columns
.headers on

SELECT username AS user, dataNascimento AS birth
FROM Utilizador
WHERE date(dataNascimento) 
	BETWEEN date('1990-01-01') AND date('2000-01-01')
ORDER BY birth
;
