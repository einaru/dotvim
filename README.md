# Readme .vim

My personal vim configuration.


## Structure

- `vimrc` contains initial and basic (g)vim settings.
- `vundles.vim` contains the [Vundle][] plugin configurations.
- `filetypes.vim` contains custom filetype definitions.
- `keymaps.vim` contains custom key mappings.
- `functions.vim` contains custom functions.


## Install

Clone the repository and create a symlink to `~/.vimrc`:

``` bash
git clone https://github.com/einaru/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```

Install [Vundle][]:

``` bash
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/vundle
```

Install/update plugins:

``` bash
vim +PluginInstall! +qall
```

[vundle]: https://github.com/gmarik/Vundle.vim
