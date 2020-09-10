# Dive into Deep Learning in Docker

Abaixo estão as instruções para utilização dos exemplos do livro [Dive into Deep Learning](https://d2l.ai/) em container [Docker](https://www.docker.com/) com miniconda. 

## Instruções

### 1 - Fazer download do Projeto
### 2 - Entrar na pasta
### 3 - Criar imagem docker
`` docker build -t minijupyter - < Dockerfile  ``
### 4 - Executar o container
`` docker container run -d -p 8888:8888 --name=minijupyter  -v "$PWD"/d2l-en:/opt/notebooks/d2l-en minijupyter ``
**Para windows, rodar seguinte comando no PowerShell:** `` docker container run -d -p 8888:8888 --name=minijupyter --restart always -v "$(pwd)\d2l-en:/opt/notebooks/d2l-en" minijupyter ``
### 5 - Acessar o Jupyter Notebook
Abra seu browser e digite `` http://localhost:8888 ``

### Dica
- Se for salvar alguma modificação ou novo arquivo, salve na pasta  do livro (*d2l-en*), caso contrário você poderá perder seus notebooks caso o container morra.

- **Instação do Docker:** [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

- **Usuários Windows:** Para usuários Windows, precisa habilitar o compartilhamento de arquivos nas configurações do docker.
https://token2shell.com/howto/docker/sharing-windows-folders-with-containers/#:~:text=In%20order%20to%20share%20Windows,v%22%20(volume)%20flag.

Precisa alterar também a forma de acessar o caminho da pasta d2l-en no parâmentro -v (volume). Precisa passar o caminho completo da pasta. Exemplo. Se o caminho for ``C:\\d2l-en``, trocar por ``//C/d2l-en``. ``-v //C:/d2l-en:/opt/notebooks/d2l-en minijupyter`` . Outra alternativa é utilizar o PowerShell e trocar o ``$PWD`` por ``$(pwd)``. Exemplo ``-v $(pwd)/d2l-en:/opt/notebooks/d2l-en``.
Esse post fala sobre essas configurações: https://medium.com/@kale.miller96/how-to-mount-your-current-working-directory-to-your-docker-container-in-windows-74e47fa104d7

- **Comandos básicos:** 
- listar o container - docker container listar
- inicar container - docker container start minijupyter
- parar container - docker container stop minijupyter
- remover container - docker container rm -f minijupyter
