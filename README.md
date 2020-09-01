# Dive into Deep Learning in Docker

Abaixo estão as instruções para utilização dos exemplos do livro [Dive into Deep Learning](https://d2l.ai/) em container [Docker](https://www.docker.com/) com miniconda. 

## Instruções

### 1 - Fazer download do Projeto
### 2 - Entrar na pasta
### 3 - Criar imagem docker
`` docker build -t minijupyter - < Dockerfile  ``
### 4 - Executar o container
`` docker container run -d -p 8888:8888 --name=minijupyter  -v "$PWD"/d2l-en:/opt/notebooks/d2l-en minijupyter ``

### 5 - Acessar o Jupyter Notebook
Abra seu browser e digite `` http://localhost:8888 ``

### Dica
- Se for salvar alguma modificação ou novo arquivo, salve na pasta  do livro (*d2l-en*), caso contrário você poderá perder seus notebooks caso o container morra.

- **Instação do Docker:** [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

