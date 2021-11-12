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


cm() {
    git commit -m "$1"
}

alias push='git push origin master' 

#important folders 

#L2 
alias s3='cd ~/Desktop/L2\ INFO/S3'
alias s4='cd ~/Desktop/L2\ INFO/S4'

alias asd='cd ~/Desktop/L2\ INFO/S4/ASD'
alias bpc='cd ~/Desktop/L2\ INFO/S4/BPC'
alias js='cd ~/Desktop/L2\ INFO/S4/JS'

#L3 S5
alias pf='cd ~/Desktop/L3\ INFO/S5/PF'
alias pds='cd ~/Desktop/L3\ INFO/S5/PDS'
alias coo='cd ~/Desktop/L3\ INFO/S5/COO'
alias ml='cd ~/Desktop/L3\ INFO/S5/ML'
alias rsx1='cd ~/Desktop/L3\ INFO/S5/RSX1'

#conexion ssh serveur amazon 
alias amazon='ssh -i "zac.pem" ec2-user@ec2-13-58-163-208.us-east-2.compute.amazonaws.com'
  
#compiler et executer 
c(){
    gcc $1 && ./a.out    

}

p(){
    git add *
    git commit -m "$1"
    git push
    echo "Commited and pushed"
}    
# alias fil='open "https://www.fil.univ-lille1.fr/portail/index.php?dipl=L&sem=S5&ue=ACCUEIL&label=Agenda%20en%20lignei"'

alias moodle='open https://moodle.univ-lille.fr/'

alias fil='~/./fil'
# fil(){
#     ~/./fil $1
# }
alias hd='hexdump'

# codi() {
   # local syntax="${1:-python}"
   # shift
   # nvim -c \
   #   "let g:startify_disable_at_vimenter = 1 |\
   #   set bt=nofile ls=0 noru nonu nornu |\
   #   hi CodiVirtualText guifg=red
   #   hi ColorColumn ctermbg=NONE |\
   #   hi VertSplit ctermbg=NONE |\
   #   hi NonText ctermfg=0 |\
   #   Codi $syntax" "$@"
# }
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


alias md_pdf='grip'
# alias copy=’xclip -selection clipboard’
# alias paste=’xclip -selection clipboard -o’


email_zac() {
    echo "zakaria.elkhayari.etu@univ-lille.fr" 
}
# alias git_log='git log --graph --oneline --all'


hack() {
    cd ~/hacks/edex-ui
    npm run start
}

alias vpn_on='osascript -e "tell application \"/Applications/Tunnelblick.app\"" -e "connect \"ulille_vpn_etu_udp_v2_mac_0\"" -e "end tell"'
alias vpn_off='killall Tunnelblick'
alias wifi='networksetup -setairportpower airport '
alias sleep='pmset sleepnow'

off(){
    vpn_off
    wifi off
    sleep
}
on(){
    wifi on
    vpn_on
}
alias term='open -a /System/Applications/Utilities/Terminal.app .'

alias socklab='/Users/zac/Desktop/L3\ INFO/S5/RSX1/TP/socklab-master/./socklab' 
alias l='ls -l'

m5(){
    ssh elkhayari@a11p26.fil.univ-lille1.fr
}

ca(){
    echo $(($1))
}
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
alias moodle='open https://moodle.univ-lille.fr/'
#code ubuntu yoni 2109

