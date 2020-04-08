#!/usr/bin/env bash

source ./bin/format.sh
source ./bin/pynvim.sh

action "Checking node..."

node --version | grep "v" &> /dev/null
if [ $? != 0 ]; then
  error "Node not installed"
  warn "Please install node use this script 'curl -sL install-node.now.sh/lts | bash' "
  exit 1;
fi

ok "===> check pass"

action "Install bat"

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

action "Install tools"
if [ "$(uname)" == "Darwin" ]; then
  running "Found you use mac"
  brew install bat
  brew install ripgrep
  brew install --HEAD universal-ctags/universal-ctags/universal-ctags
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  running "Found you use Linux"
  if [ -x "$(command -v apk)" ];then apk add bat ripgrep ctags; fi
  if [ -x "$(command -v pkg)" ];then pkg install bat ripgrep ctags; fi
  if [ -x "$(command -v pacman)" ];then pacman -S bat ripgrep ctags; fi
  if [ -x "$(command -v apt-get)" ]; then apt-get install bat ripgrep ctags; fi
  if [ -x "$(command -v dnf)" ]; then dnf install bat ripgrep ctags; fi
  if [ -x "$(command -v nix-env)" ]; then nix-env -i bat ripgrep ctags; fi
  if [ -x "$(command -v zypper)" ]; then zypper install bat ripgrep ctags; fi
fi

action "Install pynvim..."
Install_Pynvim

action "Install plugins"
make

action "Install coc extensions"
running "Create extensions dir"
extensinsdir="$HOME/.config/coc/extensions"
if [ ! -d "$extensinsdir" ]
  mkdir -p ~/.config/coc/extensions
fi
cd ~/.config/coc/extensions

if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
elif
  error "package.json duplicate."
  exit 1
fi

running "Installing extensions..."
npm install coc-html --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-css --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-vetur --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-prettier --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-tslint-plugin --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-eslint --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-emmet --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-pairs --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-python --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-imselect --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-highlight --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-git --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-emoji --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-project --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-lists --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-post --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-stylelint --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-template --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-tabnine --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-marketplace --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-gitignore --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-yank --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-explorer --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-actions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-floaterm --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-rust-analyzer --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

read -r -p "Are you a gopher? [y|N] " response
if [[ $response =~ (y|yes|Y) ]];then
  export GO111MODULE="on"
  warn "If you are live in china,please use proxy to install gopls"
  go get golang.org/x/tools/gopls@latest
  go get -u github.com/go-delve/delve/cmd/dlv
else
  ok "skipped"
fi

read -r -p "Did you write rust? [y|N] " response
if [[ $response =~ (y|yes|Y) ]];then
  rustup -V | grep "v" &> /dev/null
  if [ $? != 0 ]; then
    error "Please install rustup by this script 'curl https://sh.rustup.rs -sSf | sh' "
  else
    rustup self update
    # get nightly compiler
    rustup update nightly
    # after nightly installed
    rustup component add rls-preview --toolchain nightly
    rustup component add rust-analysis --toolchain nightly
    rustup component add rust-src --toolchain nightly
  fi
fi


ok "\n
Congratulations thinkvim install success!!!\n
Please choose a font which you favorite on here https://www.nerdfonts.com/font-downloads\n
Then install it, thinkvim dosen't provide install font script.Because it depends you.\n
Thanks for you love this neovim config."
