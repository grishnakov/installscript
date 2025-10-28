# Installation
## Golang
Download package
```fish
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.5.linux-amd64.tar.gz
```
Add Go to PATH **verify that it is indeed the correct location of the installation** (fish shell)
```fish
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
```
Verify the Installation
```fish
go version
```

## Helper packages

Install `base-devel`
```fish
sudo pacman -S base-devel
```
Ensure anaconda is installed
