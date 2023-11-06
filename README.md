```
# Install fish
sudo apt-get install fish

# Make fish default shell
# https://askubuntu.com/questions/848030/fish-shell-as-default

# Install Starship preset
starship preset pastel-powerline -o ~/.config/starship.toml

# Install Neovim 0.9+ on Ubuntu
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Tree-Sitter CLI
npm i tree-sitter-cli

# This allows Mason to install pylsp
sudo apt-get install python3-venv
```
