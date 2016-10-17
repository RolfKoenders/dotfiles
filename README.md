
# My . files
In here you find my setup of dotfiles. Zsh config and plugins, vim setup and so on.

## Setup
I'm still figuring out what is the best way to setup my new dev machines with all my tools and configuration. But for now these are the steps to set it up!

### 1) **~/**
Start by cloning this repo in your home folder.

### 2) Install Apps & Plugins
By running the `install.sh` script it will install the following tools and plugins:

- [Zsh](http://www.zsh.org/)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Tmux](https://tmux.github.io/)
- [Tmuxp](https://github.com/tony/tmuxp)
- [Powerline](https://github.com/powerline/powerline)
- [Vim](http://www.vim.org/)
- [Pip](https://pypi.python.org/pypi/pip)
- [Aws-cli](https://aws.amazon.com/cli/)

### 3) Link dotfiles
By running the `setup-dotfiles.sh` script it will move your current dotfiles (only the ones mentioned in the script) to a folder called `dotfiles_old` as a backup. Next it will create symlinks to these ones.

