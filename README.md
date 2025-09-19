# .dotfiles

These are my personal dotfiles for a consistent and productive development environment.

## Managed Applications

This repository contains configurations for the following applications:

- **Zsh**: Shell configuration (`.zshrc`).
- **Starship**: Cross-shell prompt configuration.
- **Helix**: A post-modern modal text editor.
- **Lazygit**: A simple terminal UI for git commands.
- **Ghostty**: A modern GPU-accelerated terminal emulator.
- **Gemini**: The Gemini CLI.

## Installation

These dotfiles are managed using `stow`. To install them, clone this repository and then use `stow` to create the necessary symlinks.

**Note**: Make sure to replace `your-username` with your actual username in the `git clone` command.

```bash
git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow zsh
stow starship
# etc.
```

## Application Setup

### Zsh

The Zsh configuration uses `zgen-prebuilt` as a plugin manager.

1.  **Install `zgen-prebuilt`:**
    ```sh
    git clone https://github.com/zgen-dev/zgen-prebuilt.git "${HOME}/.zgen"
    ```

2.  **Stow the configuration:**
    ```sh
    stow zsh
    ```

3.  **Open a new terminal:** The first time you open a new terminal, the plugins will be installed automatically.

## Prerequisites

Make sure you have the following software installed:

- [Stow](https://www.gnu.org/software/stow/)
- [Zsh](https://www.zsh.org/)
- [Starship](https://starship.rs/)
- [Helix](https://helix-editor.com/)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [Ghostty](https://github.com/ghostty-org/ghostty)
- [Gemini](https://gemini.google.com/)