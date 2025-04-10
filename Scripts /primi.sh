#!/bin/bash
read -p "Inserisci un numero: " n
for ((i=1; i<=n; i++)); do
  primo=1
  if ((i<2)); then
    primo=0
  else
    for ((j=2; j*j<=i; j++));
    do
      if ((i%j==0));
      then
        primo=0
        break
      fi
    done
  fi
  if((primo==1));
  then
    echo "$i è un numero primo"
  else
    echo "$i non è un numero primo"
  fi
done
