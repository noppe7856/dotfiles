dotfiles
====

## Install
### If your computer in proxy server. You need to set proxy setting TODO:script
git config --global http.proxy http://XXX.XXX.XXX.XXX:XXXXX  
git config --global https.proxy http://XXX.XXX.XXX.XXX:XXXXX  
git config --global url."https://".insteadOf git://  
git config --list  
less ~/.gitconfig  

### Clone this repo
cd ~/  
git clone https://github.com/noppe7856/dotfiles.git  
cd ~/dotfile  
git submodule init  
git submodule update  

## In vim 
:BundleInstall

