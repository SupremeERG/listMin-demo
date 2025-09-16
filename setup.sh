#!/bin/bash


# Start setup
mkdir listMin-demo
cd listMin-demo




# download and prepare listMin
echo "[+] Installing listMin
git clone https://github.com/SupremeERG/listMin.git
cd listMin
echo "[+] Creating symlink for listMin"
sudo ln -s listMin.py /usr/bin/listMin
cd ..

# download & prepare wordlists
mkdir ./wordlists
wget https://raw.githubusercontent.com/danielmiessler/SecLists/refs/heads/master/Fuzzing/6-digits-000000-999999.txt -O ./wordlists/6-digits-000000-999999.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/refs/heads/master/Discovery/Web-Content/DirBuster-2007_directory-list-lowercase-2.3-big.txt -O ./wordlists/cracked_hashes.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/refs/heads/master/Passwords/Cracked-Hashes/milw0rm-dictionary.txt -O ./wordlists/directories_lowercase.txt


# download and prepare regex patterns