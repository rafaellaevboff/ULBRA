--Faça um SQL para exibir o nome do aluno, o código do curso, o nome do curso, o nome do professor da turma e a data que ele se matriculou. Apresentar somente para alunos que tenham se matriculado entre semestre 1 de 2019, considere que as matrículas iniciam em janeiro.

SELECT  a.nome as aluno, c.id as id_curso, c.nome_curso as nome_do_curso, p.nome as professor, data_matricula
FROM    alunos a
            INNER JOIN matriculas m
                ON m.idaluno = a.id
            INNER JOIN turmas t
                ON t.id = m.idturma
            INNER JOIN cursos c
                ON c.id = t.idcurso
            INNER JOIN professores p
                ON p.id = t.idprof
WHERE   data_matricula between '2019-01-01' and '2019-06-30'
