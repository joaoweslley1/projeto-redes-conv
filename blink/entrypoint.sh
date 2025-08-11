#!/bin/bash

# inicia o blink em segundo plano
blink &

# Aguarda até que a janela seja criada e que WIN_ID tenha valor válido
while true; do
  WIN_ID=$(xdotool search --onlyvisible --class blink | head -n 1)
  if [[ -n "$WIN_ID" ]]; then
    break
  fi
  sleep 0.5
done

echo $(xdotool search --onlyvisible --class blink)

sleep 5

#echo "$WINDOW_TITLE $WIN_ID"
# Define o nome da janela (título) com base na variável de ambiente
#xdotool set_window --name "${WINDOW_TITLE}" "$WIN_ID"
xdotool set_window --name "${WINDOW_TITLE}" 18874382

# Aguarda o processo do Blink (mantém container rodando)
wait
