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

## Customize the terminal

### Color schemes with [Gogh](https://mayccoll.github.io/Gogh/)

Before using Gogh, need to install `dconf-cli`, `uuid-runtime`:
```
sudo apt install dconf-cli uuid-runtime
```

Clone Gogh:
```
git clone https://github.com/Mayccoll/Gogh
```

Install color scheme by:
```
cd Gogh/themes
./zenburn.sh #or whatever color scheme you want to use
```

For Gnome terminal you'll need to create a new Gnome Terminal profile, or else you'll get an error. From the Gnome Terminal Preferences, click the + button next to Profiles, enter a new profile name and click Create. After installing a new color scheme (which is added as a new profile for Gnome Terminal) using Gogh, you can delete this profile.

Some favorite color schemes: *azu, brogrammer, cai, chalkboard, dark-pastel, desert, flat-remix, gotham, kibble, miu, neutron, nightlion-v1, ollie, paul-millr, slate*

* [Gogh guide](https://www.linuxuprising.com/2019/07/179-color-schemes-for-your-gtk-based.html)
* [Gogh website](https://mayccoll.github.io/Gogh/)

### Fancy prompt with [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

**Install manually:**
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
```

**Configuration**

On the first run, Powerlevel10k configuration wizard will ask you a few questions and configure your prompt. If it doesn't trigger automatically, type `p10k configure`. Configuration wizard creates `~/.p10k.zsh` based on your preferences. Additional prompt customization can be done by editing this file. It has plenty of comments to help you navigate through configuration options.

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
