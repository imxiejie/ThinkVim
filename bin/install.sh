#!/usr/bin/env bash

source ./bin/format.sh
source ./bin/pynvim.sh

thinkvim_personal="$HOME/.thinkvim.d"
generator="$HOME/.config/nvim/bin/generator"

action "Create .thinkvim.d "

function ensureThinkvimd(){
  if [ ! -d "$thinkvim_personal" ]
  then
    mkdir -p $HOME/.thinkvim.d
    ok "create .thinkvim.d folder success"
  else
    warn "the .thinkvim.d folder exist skipped"
  fi

  cd ~/.thinkvim.d/

  if [ ! -f init.vim ]
  then
    touch init.vim
    ok "create .thinkvim.d/init.vim success"
  else
    warn "the .thinkvim.d/init.vim exist skipped"
  fi

  if [ ! -f plugins.yaml ]
  then
    touch plugins.yaml
    ok "create .thinkvim.d/plugins.yaml success"
    cd -
    cd $HOME/.config/nvim/
    if [ ! -f $generator ]
    then
      action "Download generator binary"
      source ./bin/generator.sh
      action "choose your languages"
      ./bin/generator
    else
      action "choose your languages"
      ./bin/generator
    fi
    cd -
  else
    warn "the .thinkvim.d/plugns.yaml exist skipped"
  fi
}

ensureThinkvimd

action "Checking node and yarn..."

node --version | grep "v" &> /dev/null
if [ $? != 0 ]; then
  error "Node not installed"
  warn "Please install node use this script 'curl -sL install-node.now.sh/lts | bash' "
  exit 1;
fi

yarn --version | grep "v" &> /dev/null
if [ $? == 0 ]; then
  error "yarn not installed"
  warn "Please install yarn use this script 'curl --compressed -o- -L https://yarnpkg.com/install.sh | bash' "
  exit 1;
fi

ok "===> check pass"

action "Install tools"

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac


if [ "$(uname)" == "Darwin" ]; then
  running "Found you use mac"
  brew install bat
  brew install ripgrep
  brew install --HEAD universal-ctags/universal-ctags/universal-ctags
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  running "Found you use Linux"
  if [ -x "$(command -v apk)" ];then apk add bat ripgrep ; fi
  if [ -x "$(command -v pkg)" ];then pkg install bat ripgrep ; fi
  if [ -x "$(command -v pacman)" ];then pacman -S bat ripgrep ; fi
  if [ -x "$(command -v apt-get)" ]; then apt-get install bat ripgrep ; fi
  if [ -x "$(command -v dnf)" ]; then dnf install bat ripgrep ; fi
  if [ -x "$(command -v nix-env)" ]; then nix-env -i bat ripgrep ; fi
  if [ -x "$(command -v zypper)" ]; then zypper install bat ripgrep ; fi
fi

action "Install pynvim..."
Install_Pynvim

action "Install plugins"
cd $HOME/.config/nvim/
make
running "Clean up..."
rm -rf "$HOME/.cache/vim/dein/cache_nvim"
rm -rf "$HOME/.cache/vim/dein/state_nvim.vim"
rm -rf "$HOME/.cache/vim/dein/.cache/"
nvim -u init.vim -c 'call dein#recache_runtimepath()|q'
cd -

action "Install coc extensions"

running "Create extensions dir"

extensinsdir="$HOME/.config/coc/extensions"

if [ ! -d "$extensinsdir" ]
then
  mkdir -p ~/.config/coc/extensions
fi
cd ~/.config/coc/extensions

if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
  running "Installing extensions...If you live in China,npm is very slow.\n
  you may need to config npm to use taobao or cnpm\n"
  npm install coc-html --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-css --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-emmet --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-pairs --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-imselect --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-highlight --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-git --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-emoji --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-project --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-lists --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-stylelint --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-gitignore --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-yank --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-explorer --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-actions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-db --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  ok "===>install all extensions success"
else
  warn "package.json duplicate.remove old package.json file"
  rm -rf ~/.config/coc/extensions/package.json
  echo '{"dependencies":{}}'> package.json
  running "Installing extensions...If you live in China,npm is very slow.\n
  you may need to config npm to use taobao or cnpm\n"
  npm install coc-html --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-css --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-emmet --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-pairs --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-imselect --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-highlight --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-git --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-emoji --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-project --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-lists --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-stylelint --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-gitignore --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-yank --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-explorer --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-actions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  npm install coc-db --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  ok "===>install all extensions success"
fi

read -r -p "Install gopls? [y|N] " response
if [[ $response =~ (y|yes|Y) ]];then
  export GO111MODULE="on"
  warn "If you are live in china,please use proxy to install gopls"
  go get golang.org/x/tools/gopls@latest
  go get -u github.com/go-delve/delve/cmd/dlv
else
  ok "skipped\n"
fi

read -r -p "Install rust-analysis? [y|N] " response
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
else
  ok "skipped\n"
fi

ok "\n
Congratulations thinkvim install success!!!\n
Please choose a font which you favorite on here https://www.nerdfonts.com/font-downloads\n
Then install it, thinkvim dosen't provide install font script.Because it depends on you.\n
Thanks for you love this neovim config."
