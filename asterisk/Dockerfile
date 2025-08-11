# Dockerfile do asterisk
FROM ubuntu:noble

# Atualiza os repositórios e instala o Asterisk, sngrep e ping
RUN apt-get update && \
    apt-get install -y asterisk sngrep vim iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho padrão
WORKDIR /etc/asterisk

# Expõe a porta padrão do Asterisk (SIP)
EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 10000-20000/udp

# Porta 5061 do tls
EXPOSE 5061/tcp

# Executa o Asterisk no modo console interativo e verboso
CMD ["asterisk", "-vvvc"]
