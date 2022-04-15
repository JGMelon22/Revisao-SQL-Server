/* UPDATE */

-- ALTERANDO UM CAMPO
UPDATE Aula 
SET Nome = 'Física'
WHERE Id = 2;

-- DESAFIO
/* ATUALIZAR O NOME DE DUAS LINHAS 
 * EM UMA TABELA JÁ EXISTENTE
*/
UPDATE AvioesMundiais 
SET Nome = 'E190-E2',
	Ano = 2016,
	Fabricante = 'Embraer'
WHERE Nome = '707';
