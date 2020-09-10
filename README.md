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

- **Usuários Windows:** Para usuários Windows, precisa alterar a forma de acessar o caminho da pasta d2l-en no parâmentro -v (volume). Precisa passar o caminho completo da pasta. Exemplo. Se o caminho for ``C:\\d2l-en``, trocar por ``//C/d2l-en``. ``-v //C:/d2l-en:/opt/notebooks/d2l-en minijupyter`` . Outra alternativa é utilizar o PowerShell e trocar o ``$PWD`` por ``$(pwd)``. Exemplo ``-v $(pwd)/d2l-en:/opt/notebooks/d2l-en``.
Esse post fala sobre essas configurações: https://medium.com/@kale.miller96/how-to-mount-your-current-working-directory-to-your-docker-container-in-windows-74e47fa104d7

