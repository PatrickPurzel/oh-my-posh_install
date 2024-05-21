#!/bin/bash
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install
oh-my-posh get shell
{ 
    echo "eval "$(oh-my-posh init bash)"" >> ~/.bashrc 
} || { 
    echo "eval "$(oh-my-posh init bash)"" >> ~/.profile 
} || {
    echo "eval "$(oh-my-posh init bash)"" >> ~/.bash_profile 
}
exec bash
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/aliens.omp.json' | Invoke-Expression