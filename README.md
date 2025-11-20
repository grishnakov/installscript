# instructions
List of commands for configuring hyprland [(end4 dotfiles)](https://github.)
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
curl -o ~/.cache/anaconda_install.sh https://repo.anaconda.com/archive/$VERSION
chmod +x ~/.cashe/anaconda_install.sh
~/.cache/anaconda_install.sh
```

```bash
eval "$(/home/user/anaconda3/bin/conda shell.fish hook)"
conda init fish
```
If you need to redo this command (fish config broke) run:
```bash
~/anaconda3/bin/conda init fish
```

## For mounting separate drive permanently in FS
**Make sure that the OS/file system is fully shut down prior to beginning. will not allow to mount the system unless the read-only lock has been released during full shutdown**
```bash
lsblk
lsblk -f
```
Find the name of the drive to mount, as well as copying the UUID. Next create mount point folder, likely in the `/mnt` directory
```bash
sudo mkdir /mnt/your_desired_name
```
Manually mount, then include in `/etc/fstab` for automatic mounting on startup (specifically mount a partition.)
```bash
sudo mount /dev/nvme1n1p3 /mnt/WINDOWS
```
```bash
sudo echo"
UUID=________________                     /mnt/WINDOWS   ntfs    defaults   0 2
" >>/etc/fstab
```



## Wireguard

```bash
sudo pacman -S wireguard-tools openresolv
```
```
sudo cp wireguard_config_file.conf /etc/wireguard/NAME.conf
```

Enable IP forwarding:
```bash
echo "net.ipv4.ip_forward = 1" | sudo tee /etc/sysctl.d/30-wireguard.conf
sudo sysctl --system
```
Open necessary ports, enable systemd-resolved
```bash
sudo firewall-cmd --zone=public --add-port=51820/udp --permanent
sudo firewall-cmd --add-service=wireguard --permanent
sudo firewall-cmd --reload
sudo systemctl enable --now systemd-resolved
```

Now just start the vpn connection (`.conf` not needed in name of config being activated):
```bash
sudo wg-quick up NAME
```
