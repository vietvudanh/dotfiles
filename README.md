# My Dotfiles Repository

This repository contains my personal configuration files (dotfiles) for various tools and applications. The main purpose is to synchronize my development environment across multiple devices.

## Tools Included

- **Shell**: Zsh configuration with custom aliases and functions
- **Editor**: NeoVim (Lua configuration) and Sublime Text
- **Terminal**: WezTerm and Tmux
- **Version Control**: Git configuration with custom aliases
- **Window Manager**: i3 (Linux)
- **Other**: Helix editor, Fish shell, Direnv, and more

## Installation

### Manual Installation

To use these configurations, you can create symbolic links from your home directory to the files in this repository:

```bash
# Example for .gitconfig
ln -s ~/path/to/this/repo/.gitconfig ~/.gitconfig

# Example for zsh configuration
ln -s ~/path/to/this/repo/zsh/.zshrc ~/.zshrc
ln -s ~/path/to/this/repo/zsh/.profile ~/.profile

# Example for NeoVim
ln -s ~/path/to/this/repo/.config/nvim ~/.config/nvim
```

### Using a Dotfiles Manager

Consider using a dotfiles manager like [GNU Stow](https://www.gnu.org/software/stow/) for easier management:

```bash
# Install stow (on macOS)
brew install stow

# Or on Ubuntu/Debian
sudo apt install stow

# Then use stow to symlink the configurations
stow zsh
stow .config
stow .
```

## Key Features

### Git Configuration
- Custom aliases for common operations
- Integration with `delta` for better diff viewing
- Configured with username and email

### Zsh Configuration
- Custom functions for common tasks
- Useful aliases for navigation and file operations
- Environment variables and shell options

### NeoVim Configuration
- Lua-based configuration
- Plugin management with Packer
- Custom keymaps and options

### Tmux Configuration
- Custom keybindings for pane splitting
- Window navigation improvements

### WezTerm Configuration
- Catppuccin color scheme
- Custom keybindings for pane management
- Tab bar at the bottom

## Dependencies

Some configurations require external tools to be installed:

- `delta` - For better Git diff viewing
- `trash` - For safer file deletion (instead of `rm`)
- `sshpass` - For password-based SSH connections
- `wezterm` - Terminal emulator
- `tmux` - Terminal multiplexer
- `neovim` - Text editor

Install these tools using your system's package manager or:
```bash
# On macOS with Homebrew
brew install git-delta trash sshpass wezterm tmux neovim

# On Ubuntu/Debian
sudo apt install git-delta wezterm tmux neovim
# Note: trash and sshpass might need to be installed separately or through other means
```

## Custom Functions

### Zsh Functions
- `sshp` - Simplified SSH with password authentication
- `gi` - Generate .gitignore files from templates
- `fname` - Find files by name pattern
- `activate` - Activate Python virtual environments

### Git Aliases
- `st` - Short for `git status -s -b`
- `c` - Short for `git commit`
- `br` - Short for `git branch -a -v`
- `co` - Short for `git checkout`
- `logd` - Formatted git log with short hash and relative date
- `logline` - Git log with graph and decoration

## Contributing

This is a personal dotfiles repository, but suggestions are welcome. Feel free to fork and modify for your own use.

## License

These configurations are provided as-is without any specific license. Use at your own risk.