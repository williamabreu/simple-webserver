# Infraestrutura Básica de Servidor WEB em NodeJS

Usado para servir páginas estáticas de forma simples e eficiente.

## Configuração em Debian

### Instalação da plataforma NodeJS

Requisitos iniciais:

```
$ sudo apt update
$ sudo apt install curl git
```

Baixe e instale o Node:

```
$ cd /tmp/
$ curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
$ sudo bash nodesource_setup.sh
$ sudo apt install nodejs
$ sudo apt install build-essential
```

Verifique se foram instalados o Node v10.x e o NPM v6.x:

```
$ node -v
$ npm -v
```

### Instalação do servidor WEB

Baixe o repositório:

```
$ cd ~
$ git clone https://github.com/williamabreu/simple-webserver.git
$ cd simple-webserver/
```

Instale as dependências:

```
$ npm install
```

Iniciar o servidor:

```
$ sudo node main.js
```

### Configuração do servidor WEB como serviço

Instale o serviço Linux, passando o caminho completo sem "/" no final do diretório onde está instalado o servidor, como no exemplo:

```
$ sudo sh install-service.sh /home/administrador/simple-webserver
```

Execute os comandos para ativar o novo serviço:

```
$ sudo systemctl daemon-reload
$ sudo systemctl start simple-webserver
$ sudo systemctl enable simple-webserver
```