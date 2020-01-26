## keer2345's dotfiles
This is the repository of the config files, I need on every system. I manage my config files with [homeshick](https://github.com/andsens/homeshick), an awesome git dotfiles synchronizer written in bash.

## About Homeshick
[wiki](https://github.com/andsens/homeshick/wiki)
### Install
```
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
```
My shell is [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh):
```
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.zshrc
printf '\nfpath=($HOME/.homesick/repos/homeshick/completions $fpath)' >> $HOME/.zshrc
```
### Usage
<div align="center">
    <img src="https://github.com/andsens/homeshick/wiki/tab-completion.gif">
</div>

```
homeshick generate dotfiles
```

```
homeshick track dotfiles .bashrc
homeshick track dotfiles .config/i3/*
```

```
homeshick cd dotfiles
git commit -m "Initial commit, add .bashrc"
git remote add origin git@github.com:username/dotfiles.git
git push -u origin master
cd
```
