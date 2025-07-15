#run after installing foot and opening it
sudo pacman -S vim neovim lazygit ly docker docker-compose
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

echo "settung up ly"
sudo systemctl disable sddm.service
sudo systemctl enable ly.service

reboot
