# ExalFabu dotfiles
Folder containing all the configuration files i use mostly.
[GNU Stow](https://www.gnu.org/software/stow/) is used to manage the dotfiles

## Dotfiles
 
- **tmux**  
  Basic configuration. Prefix changed and added faster way to move between panes
- **zsh**  
  Based on [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/) framework.  
  I basically chose a theme and some plugins. That's it.
- **git**  
  Added user name and mail to the base config file. Might add a .gitignore in the future


## Installation

### Dependencies
I use the [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/) framework. Luckily I've figured out how to include it as a submodule, this way it should be a straight forward process.  

### Steps
1. Clone this repository (ideally inside `~/.dotfiles`)
    ```sh
    git clone --recurse-submodules https://github.com/ExalFabu/.dotfiles.git ~/.dotfiles
    ```
    `--recurse-submodules` is needed to install the oh-my-zsh framework folder.
1. Link all the dotfiles to their folders with [stow](https://www.gnu.org/software/stow/)
    ```sh
    cd ~/.dotfiles
    bash ./runme.sh
    ```
    The `runme.sh` utility simply serves as a preview-and-confirm tool. It basically runs `stow -t ~ configs`

