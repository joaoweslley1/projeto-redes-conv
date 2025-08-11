# Asterisk com SRTP e TLS para o SIP

## Objetivo

Criar um cenário usando docker compose para executar um ambiente contendo dois clientes SIP (blink) e um servidor asterisk configurado para usar TLS e SRTP.

## Dependências

Para que o cenário seja executado, é necessário possuir instalado na máquina host as seguintes dependências:

- Docker
- Docker compose
- Interface gráfica com servidor Xorg.

## Estrutura do projeto

```bash
.
├── asterisk		# dockerfile do asterisk
│   └── Dockerfile
├── blink		# dockerfile do blink
│   └── Dockerfile
├── config		# arquivos de configuração do asterisk
│   ├── extensions.conf
│   ├── hosts
│   └── sip.conf
├── docker-compose.yaml
├── keys		# certificados autoassinados usados no servidor
│   ├── asterisk.crt
│   ├── ...
│   └── cliente2.pem
└── README.md
```

## Execução

1. Habilitar acesso ao servidor X

    ```bash
    # permite que os containers com interface gráfica sejam executados
    xhost +x
    ```

2. Incializar cenário

    ```bash
    # executa o docker compose sem bloquear o terminal
    docker compose up -d
    ```

3. Finalizar cenário

    ```bash
    # executa o docker compose sem bloquear o terminal
    docker compose down
    ```
