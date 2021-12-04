--Faça um SQL para selecionar os alunos que não moram na cidade onde estudam. Considerando que a cidade onde estudam é Torres. Exibir o código, o nome do aluno e a cidade onde ele mora.

SELECT  a.id as id_aluno, a.nome AS aluno, c.nome as cidade_do_aluno
FROM    alunos a
        inner join cidades c
            on c.id = a.idcid
WHERE   a.idcid != 1