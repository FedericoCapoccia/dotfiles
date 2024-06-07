# My dotfiles
Dotfiles of my system

## Requirements

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

Clone the repository into your $HOME directory

```
git clone git@github.com:FedericoCapoccia/dotfiles.git && cd dotfiles
git clone https://github.com/FedericoCapoccia/dotfiles.git && cd dotfiles
```

After that pull in the submodules

```
git submodule init
git submodule update
```

Finally stow the files

```
stow .
```
