
# My . files 💁
This is my setup to be productive on MacOS and Ubuntu. Its a collection of configuration for `zsh`, `tmux`, `vim` and what i like to have on my systems.

## Whats in it?
All fine but tell me whats in it!

#### Configuration for
	- zsh
	- tmux
	- vim

#### Packages
It will install [brew](http://brew.sh/) and some packages. Checkout the [Brewfile](https://github.com/RolfKoenders/dotfiles/blob/master/install/osx/Brewfile) to see which packages will be installed. 

#### Color schemes/themes
I really like the [Dracula](https://draculatheme.com) theme, so you get it in my Vim setup and it check out the [Dracula iTerm theme](https://draculatheme.com/iterm/) which you can import if you like it.

#### System configuration
I also started to add some MacOS system configuration i like to have. Checkout the `install/osx/configuration.sh` file for on that.

## Setup
You like it? To start using this setup follow these steps:

### Backup!
Although the install script will backup your current dotfiles it is always a good idea to make backup of your configuration files and store them somewhere (in a git repo for example) so you always have them ready. **it will not delete or overwrite any of your current dotfiles which are not backuped** You can find your backuped files at `~/dotfiles_backup`.

### Installation
If on OSX, you will need to install the XCode CLI tools before continuing. Run the following to install these:
```bash
$ xcode-select --install
```

Then, clone the dotfiles repository to your computer. This can be placed anywhere, and symbolic links will be created to reference it from your home directory.

```bash
git clone https://github.com/RolfKoenders/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

#### iTerm theme
The Dracula iTerm theme is cloned at `~/iTerm/themes/dracula`. Go to your profile in iTerm settings and import it.

### Enjoy!
Enjoy and be productive!
