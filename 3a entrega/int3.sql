.mode columns
.headers ON
.nullvalue NULL

-- Listar utilizadores com subscrição premium com mais de 12 meses


SELECT Utilizador.username AS Users, Conta.dataInicio AS Inicio, Conta.dataFim AS Fim
FROM Utilizador JOIN Conta
ON Utilizador.username = Conta.username
GROUP BY Utilizador.username
HAVING Fim-Inicio >= 1 AND Conta.tipoConta=6.99
ORDER BY Users, Inicio, Fim
;
