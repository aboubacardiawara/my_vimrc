rma() {

find . -name "$1" -depth -exec rm {} \;

}
gitrma() {

find . -name "$1" -depth -exec git rm {} \;

}

alias ..='cd ..'
alias untar='tar -zxvf'
alias nano='nano -mi'
alias ping='ping -c 5'
#alias speed='speedtest-cli --server 2406 --simple'

#get intern ip and extern ip
alias ipi='ipconfig getifaddr en0'
alias ipe='curl ipinfo.io/ip'


code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/llvm/bin:$PATH"

#git
alias add='git add'

cm() {
git commit -m "$1"
}

alias push='git push origin master' 

#important folders 

alias s1='cd ~/Desktop/L2\ INFO/S1'
alias s2='cd ~/Desktop/L2\ INFO/S2'
alias asd='cd ~/Desktop/L2\ INFO/S2/ASD'
alias bpc='cd ~/Desktop/L2\ INFO/S2/BPC'
alias js='cd ~/Desktop/L2\ INFO/S2/JS'

alias amazon='ssh -i "zac.pem" ec2-user@ec2-13-58-163-208.us-east-2.compute.amazonaws.com'
   
c(){
    gcc $1 && ./a.out    

}

p(){
    git add *
    git commit -m "$1"
    git push origin master
    echo "Commited and pushed"
}    
alias fil='open "https://www.fil.univ-lille1.fr/portail/index.php?dipl=L&sem=S4&ue=ACCUEIL&label=Agenda%20en%20ligne"'
alias hd='hexdump'
codi() {
   local syntax="${1:-python}"
   shift
   nvim -c \
     "let g:startify_disable_at_vimenter = 1 |\
     set bt=nofile ls=0 noru nonu nornu |\
     hi CodiVirtualText guifg=red
     hi ColorColumn ctermbg=NONE |\
     hi VertSplit ctermbg=NONE |\
     hi NonText ctermfg=0 |\
     Codi $syntax" "$@"
}
alias vimrc='vim ~/.vimrc'
bash_profile(){
    vim ~/.bash_profile
    source ~/.bash_profile
    echo "Ok"
} 
git_config(){
    git config --global --unset credential.helper
    git config --global user.name "Zakaria ELKHAYARI"
    git config --global user.email zakaria.elkhayari.etu@univ-lille.fr
    git config --global credential.helper store
}
#git pull du projet et des repertoires importants:
#echo "pulling projet"
#git pull ~/git/l2s4-projet-2021
#echo "projet pulled"


