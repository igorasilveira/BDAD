.mode columns 15 15 15
.headers on
.nullvalue NULL

SELECT username AS utilizador, Pais.nome AS pais, Localidade.nome AS localidade
FROM Utilizador, Localidade, Pais
WHERE Utilizador.codigoPostal = Localidade.codigoPostal
        AND
      Utilizador.paisID = Pais.paisID
ORDER BY pais, localidade, username
;
