--Faça um SQL para listar qual a turma que tem mais alunos matriculados.

SELECT      COUNT(idaluno) as quantidade_alunos, idturma as id_sala_com_mais_alunos
FROM        matriculas
GROUP BY    idturma
ORDER BY    quantidade_alunos DESC
LIMIT       1