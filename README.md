# My zsh theme



## Look

![look of my theme](https://n.ethz.ch/~dbernhard/static/zsh-prompt.png)

Meaning of the right prompt:  `[Battery | Load average 5m 10m 15m | Time]`

The bottom line is from tmux (terminal multiplexer).

## Within subfolder

![look of my theme](https://n.ethz.ch/~dbernhard/static/zsh-prompt2.png)



## Installation - Laptop

* install zsh / (clone zsh, build and install)
* clone oh-my-zsh
    * `wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh`
    * `sh install.sh`
* Download the theme sources

```sh
wget -P ~/.oh-my-zsh/themes https://raw.githubusercontent.com/dbernhard-0x7CD/zsh-dbern-theme/main/dbern-laptop.zsh-theme
```
* Set theme in *~/.zshrc*
    * `ZSH_THEME="dbern-laptop"`
* `source ~/.zshrc`
* For themes using UTF-8 characters (like mine below) it's necessary to use an UTF-8 locale (`localectl` returns something like " System Locale: LANG=en_US.UTF-8")

## Installation - Server

* install zsh / (clone zsh, build and install)
* clone oh-my-zsh
    * `wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh`
    * `sh install.sh`
* Download the theme sources

```sh
wget -P ~/.oh-my-zsh/themes https://raw.githubusercontent.com/dbernhard-0x7CD/zsh-dbern-theme/main/dbern.zsh-theme
```
* Set theme in *~/.zshrc*
    * `ZSH_THEME="dbern"`
* `source ~/.zshrc`
* For themes using UTF-8 characters (like mine below) it's necessary to use an UTF-8 locale (`localectl` returns something like " System Locale: LANG=en_US.UTF-8")



## Credits

The shortened path is copied from this theme: [fishy](https://git.ideamake.cn/share/ohmyzsh/blob/1ba0af650ac575a7d35b10146d2e7a7b3b2e2ae6/themes/fishy.zsh-theme)
