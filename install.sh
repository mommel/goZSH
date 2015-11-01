#/bin/bash
OHMYZSH_BASE=~/.oh-my-zsh
FONT_DIR="$HOME/Library/Fonts"

#Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install wget to get oh-my-zsh
brew update && brew install wget Caskroom/cask/iterm2
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#Fix Fonts and theme for El capitan
cp "Menlo-Powerline.otf" "$font_dir/"
cp "agnoster.zsh-theme" "${OHMYZSH_BASE}/themes/"
echo 'Set ZSH theme to => ZSH_THEME="agnoster"'
pause
vi ~/.zshrc
clear
echo "Please set iterm2 font to Menlo-Powerline Regular "
echo "Import colorsheme Solarized Dark from this folder."