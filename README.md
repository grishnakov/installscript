# instructions
List of commands for configuring hyprland [(end4 dotfiles)](https://github.com/end-4/dots-hyprland)
```bash
mkdir -p ~/.temp
git clone https://github.com/end-4/dots-hyprland.git ~/.temp
```


```bash
ssh-keygen -t ed25519 -C "youremail@gmail.com"
cat ~/.ssh/id_ed25519.pub
```
Add key to github and pull the script
```bash
git clone git@github.com:grishnakov/installscript.git
```

```bash
chmod +x runfoot.sh
./runfoot.sh
```


## For conda:
```bash
set VERSION $(curl -s https://repo.anaconda.com/archive/ \
                | grep -o '"Anaconda3-[^"]*-Linux-x86_64.sh"' \
                | tr -d '"' \
                | sort -V \
                | tail -n 1)
curl -o ~/.temp/anaconda_install.sh https://repo.anaconda.com/archive/$VERSION
chmod +x ~/.temp/anaconda_install.sh
~/.temp/anaconda_install.sh
```

```bash
eval "$(/home/user/anaconda3/bin/conda shell.fish hook)"
conda init fish
```


