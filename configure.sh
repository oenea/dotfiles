#!/bin/sh
git config --global user.name "oenea"
git config --global user.email "oenear@gmail.com"
git config --global core.editor nvim
touch ~/.gitmessage.txt
printf "Multi-line description of commit,\nfeel free to be detailed\n\n[Ticket: X]" > ~/.gitmessage.txt
git config --global commit.template ~/.gitmessage.txt
git config --global core.pager ''
#git config --global color.ui false

