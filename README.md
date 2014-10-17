# Vim config

My personal vim configuration.

## Structure

- `vimrc` contains initial and basic (g)vim settings.
- `vundles.vim` contains the [Vundle][] plugin configurations.
- `filetypes.vim` contains custom filetype definitions.
- `keymaps.vim` contains custom key mappings.
- `functions.vim` contains custom functions.

[vundle]: https://github.com/gmarik/Vundle.vim

## Setup

First you clone this repository

```
git clone https://github.com/einaru/vim-config ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```

And then install [Vundle][], and the plugins

```
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/vundle
vim +PluginInstall +qall
```
