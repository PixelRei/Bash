#!/bin/bash
read -p "Inserisci un voto (3-10): " voto
case $voto in
  10)
    echo "massimo"
    ;;
  9)
    echo "eccellente"
    ;;
  7 | 8)
    echo "buono"
    ;;
  6)
    echo "sufficiente"
    ;;
  5)
    echo "insufficiente"
    ;;
  3 | 4)
    echo "male male"
    ;;
  *)
    echo "voto non valido. Inserisci un voto tra 3 e 10"
    ;;
  esac
