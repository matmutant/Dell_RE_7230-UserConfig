# ZSH on Ubuntu on Windows  
## Install Zsh
Install ZSH on your Ubuntu WSL using ```sudo apt install zsh```via Bash (WSL)

## Install Oh-my-Zsh
See dedicated [documentationt](https://ohmyz.sh/#install)

## Set default default dir to ~/
Launch ZSH, by default, ZSH will open in a windows folder and not in ~/  
Edit ~/.zshrc by adding the following at the end of the file:  
```
#starting ZSH in ~ as default dir when user prompted (keeps launch directory if launched by other way)
if [ -t 1 ]; then
cd
fi
```
## custom ZSH config  
Before using the provided .zshrc, don't forget to install 
- [neofetch](https://github.com/dylanaraps/neofetch/blob/master/README.md)
- [zsh-insulter](https://github.com/matmutant/zsh-insulter/tree/master)
