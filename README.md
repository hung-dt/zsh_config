# zsh
ZSH configuration files

## Preparation
Install zsh:
```shell
sudo apt-get update
sudo apt-get install zsh
zsh --version
```
Change shell:
```shell
chsh -s $(which zsh)
```
Close the current terminal and open a new one:
```
echo $SHELL
```
or
```
echo $0
```

## Install patched fonts for dev

[nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

[powerline fonts](https://github.com/powerline/fonts)
```
sudo apt-get install fonts-powerline
```

## zsh git-prompt

Follow this [git-prompt guide](https://joshdick.net/2017/06/08/my_git_prompt_for_zsh_revisited.html)

## References
* [A User's Guide to the Z-Shell](http://zsh.sourceforge.net/Guide/zshguide.html) by Peter Stephenson
* [zsh-lovers](https://grml.org/zsh/zsh-lovers.html)
* [Zzappers Best of ZSH tips](http://www.rayninfo.co.uk/tips/zshtips.html) by David Rayner
* [From Bash to Z Shell: Conquering the Command Line](http://www.bash2zsh.com/)
* [Zsh reference-card (PDF)](http://www.bash2zsh.com/zsh_refcard/refcard.pdf)
* [Moving to Zsh](https://scriptingosx.com/2019/06/moving-to-zsh/)
* [zsh-pony](https://github.com/mika/zsh-pony)
* [My zsh configuration](https://dustri.org/b/my-zsh-configuration.html) by Julien Voisin
* [Zsh - ArchWiki](https://wiki.archlinux.org/index.php/Zsh)
* [Zsh Utilities functions](http://xgarrido.github.io/zsh-utilities/zsh-utilities-functions.html)
* [Configure Zsh Options & Plugins](https://www.viget.com/articles/zsh-config-productivity-plugins-for-mac-oss-default-shell/)
