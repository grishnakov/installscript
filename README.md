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
curl -o ~/.temp/anaconda_install.sh https://repo.anaconda.com/archive/$VERSION
chmod +x ~/.temp/anaconda_install.sh
~/.temp/anaconda_install.sh
```

```bash
eval "$(/home/user/anaconda3/bin/conda shell.fish hook)"
conda init fish
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
echo"
UUID=UUID_OF_PAE
"
```
