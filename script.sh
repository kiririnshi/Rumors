#!/bin/bash

/home/kirov/tools/moses/scripts/tokenizer/tokenizer.perl -l en \ < /home/kirov/dataset/text.txt   \ > /home/kirov/dataset/texttok.txt

/home/kirov/tools/moses2/moses/bin/moses -f /home/kirov/tools/train/model/moses.ini < /home/kirov/dataset/texttok.txt > /home/kirov/dataset/out.txt

/home/kirov/tools/moses/scripts/tokenizer/detokenizer.perl -l en \ < /home/kirov/dataset/out.txt   \ > /home/kirov/dataset/texttok.txt

