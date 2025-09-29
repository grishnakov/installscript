#run after installing foot and opening it
sudo pacman -S vim neovim lazygit ly docker docker-compose lua luarocks tree-sitter exa zoxide zellij
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "Please open neovim to install all other packages"

echo "
input {
    kb_layout = us,ru
    kb_options = grp:alt_shift_toggle, caps:escape
}
" >>~/.config/hypr/hyprland/general.conf
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER

echo "
zoxide init fish | source
" >>~/.config/fish/config.fish

# KDE connect firewall configuration
sudo firewall-cmd --permanent --add-port=1714-1764/udp
sudo firewall-cmd --permanent --add-port=1714-1764/tcp
sudo firewall-cmd --permanent --add-service=kdeconnect
