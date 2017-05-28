.mode columns
.headers on
.nullvalue NULL

-- Utilizadores que terminaram a conta premium há mais de dois meses

SELECT Utilizador.username, round(julianday('now')-julianday(Conta.dataFim), 1) AS DiasExpiracao
FROM Utilizador, Conta
WHERE Utilizador.username = Conta.username
      AND
      julianday('now')-julianday(Conta.dataFim) > 60
      AND
      Conta.tipoConta = 6.99
ORDER BY DiasExpiracao
;
