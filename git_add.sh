#!/bin/bash
git add .
echo "Dodaj komentarz"
read komentarz
git commit -m komentarz
git push
