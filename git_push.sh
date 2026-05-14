#!/bin/bash

# Controlla se è stato fornito un messaggio di commit
if [ -z "$1" ]; then
  echo "Errore: Devi fornire un messaggio di commit."
  echo "Utilizzo: ./git_push.sh \"tuo messaggio di commit\""
  exit 1
fi

COMMIT_MESSAGE=$1

echo "--- Aggiunta file in corso... ---"
git add .

echo "--- Creazione commit: \"$COMMIT_MESSAGE\"... ---"
git commit -m "$COMMIT_MESSAGE"

echo "--- Invio al repository remoto (push)... ---"
git push

if [ $? -eq 0 ]; then
  echo "--- Fatto! Le modifiche sono online. ---"
else
  echo "--- Errore durante il push. Controlla la connessione o le credenziali. ---"
fi
