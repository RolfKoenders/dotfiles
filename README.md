# My Dotfiles 💁

This repository contains my personal dotfiles for my Fedora development environment, running on a Framework 13 laptop. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage and symlink these configuration files.

## Overview

### Shell: Zsh

- **Prompt:** Uses [Powerlevel10k](https://github.com/romkatv/powerlevel10k) for a fast, customizable prompt with instant prompt support.
- **Plugin Manager:** [zinit](https://github.com/zdharma-continuum/zinit) is used to manage plugins and snippets.
- **Plugins:**
  - Syntax highlighting (`zsh-users/zsh-syntax-highlighting`)
  - Command completions (`zsh-users/zsh-completions`)
  - Autosuggestions (`zsh-users/zsh-autosuggestions`)
  - FZF tab completion (`Aloxaf/fzf-tab`)
- **Snippets:** Loads Oh My Zsh plugins for `git`, `sudo`, and `command-not-found`.
- **Completions:** Customizes completion styles and integrates with FZF and zoxide.
- **Keybindings:** Emacs-style keybindings, with history search on `Ctrl+p`/`Ctrl+n`.
- **History:** Large, deduplicated, and shared shell history with several options for better usability.
- **Aliases:** Common command aliases for convenience (see `aliases` file for more).
- **Integrations:** 
  - [fzf](https://github.com/junegunn/fzf) for fuzzy finding
  - [zoxide](https://github.com/ajeetdsouza/zoxide) for smarter directory jumping
  - [fnm](https://github.com/Schniz/fnm) for fast Node.js version management (if installed)

## Usage

Clone this repository and use GNU Stow to symlink the dotfiles into your home directory:

```sh
stow .
```

## My Hardware

- **Laptop:** Framework 13 with [this configuration](https://frame.work/nl/en/share-my-laptop?token=0331df68adf)
- **Current OS:** Fedora Linux

---
Feel free to explore and adapt these configs for your own