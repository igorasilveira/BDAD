-- BDAD @ MIEIC, grupo 203
-- TRIGGER 1 - ADICIONA
-- Incremento de um mes premium no aniversario de um utilizador

--se é atualmente gratuito atualiza a data de inicio e fim e modifica o tipo de conta

CREATE TRIGGER apply_premium_month
AFTER INSERT ON UtilizadorOuveMusica
For each row
WHEN (Select dataFim FROM Conta WHERE NEW.username = Conta.username) = 'N/D'
	BEGIN
		UPDATE Conta
		SET dataInicio = date('now'),
		dataFim = date('now', '+43829 Minute'),
		tipoConta = '6.99'
		WHERE (
			Conta.username = NEW.username
			AND
			strftime('%m', (Select dataNascimento FROM Utilizador WHERE NEW.username = Utilizador.username)) = strftime('%m', 'now')
			AND
			strftime('%d', (Select dataNascimento FROM Utilizador WHERE NEW.username = Utilizador.username)) = strftime('%d', 'now')
		);
	END;

-- se é atualmente premium atualiza apenas a final

CREATE TRIGGER apply_premium_month2
AFTER INSERT ON UtilizadorOuveMusica
For each row
WHEN (Select dataFim FROM Conta WHERE NEW.username = Conta.username) <> 'N/D'
	BEGIN
		UPDATE Conta
		SET dataFim = date(dataFim, '+43829 Minute')
		WHERE (
			Conta.username = NEW.username
			AND
			strftime('%m', (Select dataNascimento FROM Utilizador WHERE NEW.username = Utilizador.username)) = strftime('%m', 'now')
			AND
			strftime('%d', (Select dataNascimento FROM Utilizador WHERE NEW.username = Utilizador.username)) = strftime('%d', 'now')
		);
	END;

-- remove premium quando expira tempo

CREATE TRIGGER apply_premium_month3
AFTER INSERT ON UtilizadorOuveMusica
For each row
BEGIN
	UPDATE Conta
	SET dataFim = 'N/D',
	tipoConta = '0.00',
	preco = '0.00'
	WHERE (
		Conta.username = NEW.username
		AND
		dataFim < strftime('now')
	);
END;
