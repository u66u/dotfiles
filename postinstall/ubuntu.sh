sudo apt update
sudo apt install -y lua5.4 liblua5.4-dev luarocks
sudo apt install -y python3 python3-pip python3-venv
sudo apt install -y ripgrep fd-find

curl -LsSf https://astral.sh/uv/install.sh | sh

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

# kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh
ln -sf ~/.local/kitty.app/bin/{kitty,kitten} ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
sed -i "s|Exec=kitty|Exec=$(readlink -f ~/.local/kitty.app/bin/kitty)|g" ~/.local/share/applications/kitty*.desktop
update-desktop-database ~/.local/share/applications/
echo 'kitty.desktop' >~/.config/xdg-terminals.list

# treesitter
wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.25.10/tree-sitter-linux-x64.gz
gzip -d tree-sitter-linux-x64.gz
chmod +x tree-sitter-linux-x64
mv tree-sitter-linux-x64 ~/.local/bin/tree-sitter

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

#nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install node
