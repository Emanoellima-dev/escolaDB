# Análise de Dados Acadêmicos

Este projeto tem como objetivo realizar a análise de dados de uma instituição acadêmica ficticia utilizando SQL. O modelo de dados envolve informações sobre **alunos**, **professores**, **disciplinas**, **turmas**, **notas** e **avaliações**, com o intuito de responder a uma série de perguntas sobre o desempenho dos alunos e a gestão das turmas.

## Tabelas

Este projeto é baseado em um modelo de banco de dados relacional com as seguintes tabelas principais:

- **aluno**: Contém informações sobre os alunos.
- **professor**: Contém informações sobre os professores.
- **disciplina**: Contém informações sobre as disciplinas oferecidas.
- **turma**: Contém informações sobre as turmas e as disciplinas que são oferecidas em cada semestre.
- **turma_aluno**: Relaciona os alunos com as turmas em que estão matriculados.
- **nota**: Armazena as notas dos alunos nas avaliações das disciplinas.
- **avaliacao**: Contém informações sobre as avaliações realizadas nas disciplinas, incluindo o peso das avaliações.

## Desafios de Análise

Neste repositório, você encontrará diversos desafios de análise de dados que foram criados para treinar habilidades de consulta SQL e análise de dados. Os desafios estão divididos em dois níveis:

- **Desafios Fáceis**: Questões simples para praticar a junção de tabelas e uso básico de funções SQL.
- **Desafios Complexos**: Questões mais avançadas que envolvem agregações, subconsultas e funções avançadas de SQL.

## Exemplos de Desafios

1. **Encontre os alunos que estão matriculados em mais de uma disciplina no mesmo semestre.**
   - **Tabelas envolvidas**: `turma_aluno`, `aluno`
   
2. **Calcule a média de notas dos alunos por disciplina, por semestre, levando em consideração a avaliação ponderada.**
   - **Tabelas envolvidas**: `nota`, `avaliacao`, `aluno`, `disciplina`

3. **Liste os professores que lecionam mais de uma disciplina por ano.**
   - **Tabelas envolvidas**: `turma`, `professor`

## Como Iniciar o Projeto localmente

1. **Crie um banco de dados no seu sistema de gerenciamento de banco de dados (DBMS) preferido** (ex: MySQL, PostgreSQL, etc).
2. **Execute os scripts SQL para criar as tabelas** com os dados do modelo.
3. **Realize as consultas SQL para responder aos desafios** que estão descritos acima.
