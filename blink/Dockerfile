FROM ubuntu:jammy

# baixa das dependências
RUN apt-get update && \
    apt-get install -y x11-apps pulseaudio wget xdotool ca-certificates

# Adiciona o repositório do blink
RUN wget -O /usr/share/keyrings/agp-debian-key.gpg https://download.ag-projects.com/agp-debian-key.gpg && \
	echo "deb     [signed-by=/usr/share/keyrings/agp-debian-key.gpg] https://packages.ag-projects.com/ubuntu/ jammy main contrib" > /etc/apt/sources.list.d/ag-projects.list && \
	echo "deb-src [signed-by=/usr/share/keyrings/agp-debian-key.gpg] https://packages.ag-projects.com/ubuntu/ jammy main contrib"  >> /etc/apt/sources.list.d/ag-projects.list

# Atualiza o repositório e instala o blink
RUN apt-get update && \     
    apt-get install -y blink

# Executa o blink
CMD ["blink"]
