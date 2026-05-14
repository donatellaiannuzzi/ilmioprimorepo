#!/bin/bash

# Controlla se è stato fornito un nome per il branch
if [ -z "$1" ]; then
  echo "Errore: Devi fornire un nome per il nuovo branch."
  echo "Utilizzo: ./create_branch.sh \"nome-del-branch\""
  exit 1
fi

BRANCH_NAME=$1

echo "--- Creazione del branch \"$BRANCH_NAME\" in corso... ---"
git checkout -b "$BRANCH_NAME"

if [ $? -eq 0 ]; then
  echo "--- Branch \"$BRANCH_NAME\" creato e selezionato correttamente! ---"
else
  echo "--- Errore durante la creazione del branch. ---"
fi
