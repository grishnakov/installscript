# Installing Anaconda

**VERIFY THAT IT IS THE LATEST VERSION**
```fish
curl -O https://repo.anaconda.com/archive/Anaconda3-2025.06-0-Linux-x86_64.sh
chmod +x ~/Anaconda3-2025.06-0-Linux-x86_64.sh
./Anaconda3-2025.06-0-Linux-x86_64.sh
```
Then, run 
```fish
eval "$(/home/user/anaconda3/bin/conda shell.fish hook)"
conda init
conda init fish
```

Restart the terminal and everything should be working.
