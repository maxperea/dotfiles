alias al="vim ~/.oh-my-zsh/custom/aliases.zsh"
alias update="sudo pacman -Syu"
alias notes="vim ~/notes/index.md"
alias ad="cd ~/Documents/ad2/ass3"
alias sec="cd ~/Dropbox/skola/secure"
alias janus="ssh -i ~/.ssh/pereaduringmax.key pereaduringmax@130.238.10.236"
alias juice="ssh -i ~/.ssh/pereaduringmax.key -L 3144:10.11.11.92:3000 pereaduringmax@130.238.10.236"
alias h="history"
alias p="evince"
alias dk2="cd ~/Documents/cn2/lab2"
alias dk21="cd /home/max/.ns3/source/ns-3.30/scratch/lab1"
alias waff="cd ~/.ns3/source/ns-3.30/ && ./waf shell"
alias aoc="cd ~/Dropbox/aoc/3"
alias väder="curl 'wttr.in/Uppsala'"
alias lab3="ssh -i ~/.ssh/pereaduringmax.key -L 1313:localhost:1313 pereaduringmax@130.238.10.236"
alias rl="source ~/.zshrc"
alias hpp="cd ~/Dropbox/skola/hpp/hpp-vt20-individual"
alias ad3="cd /home/max/Dropbox/skola/ad3"
alias sat="cd /home/max/Dropbox/skola/ad3/sat"
alias sat="cd /home/max/Dropbox/skola/ad3/sat"
alias smt="cd /home/max/Dropbox/skola/ad3/ad3-assignment-2/ad3-assignment-2/smt"
alias crypto="cd ~/Dropbox/skola/crypto/crypto"
alias ampl="~/Downloads/amplin/ampl"
alias c="cryptominisat5"
alias t="./cruDes.py | c | ./cruDesPrint.py"
alias minisat='/home/max/sat/minisat/core/minisat_static'
alias xc="xclip -selection clipboard -i"

function note { vim ~/notes/"$1".md }
