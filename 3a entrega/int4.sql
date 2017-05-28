.mode columns
.headers ON
.nullvalue NULL


SELECT DISTINCT Publicitario.nome, Publicidade.duracao AS num
FROM Publicitario, Publicidade, Pais
WHERE Publicitario.paisID=
  (SELECT Pais.paisID FROM Pais WHERE Pais.nome='Portugal')
  AND Publicidade.publicitarioID=Publicitario.publicitarioID
  ORDER BY Publicidade.duracao
;
