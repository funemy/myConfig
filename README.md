This is a list of configurations in my own computer

## Atom

- **config.cson**<br>
my atom configuration
- **keymap.cson**<br>
my atom customized key bind
- **sytle.less**<br>
my atom customized sytle sheet

the selection area will be more clear while not conflicting with most themes

## vim
- **init.vim**
- **.vimrc**

use `init.vim` for neovim and `.vimrc` for vim(>8)
the `.vimrc` is very light-weighted and only support python
since I found now I only use terminal vim for some small python script.

I switch back from neovim to vim because vim8 now is working just fine, and deoplete is not working properly, so I replace it with completor.

place `init.vim` at `~/.config/neovim`

using `vim-plug` to manage plugin

## ZSH
- **.zshrc**

Some alias for git command (the oh-my-zsh git plugin is a little bit uncomfortable for me)

Lazy loading for NVM (to reduce startup time)

Some other regular configs for OCaml/Java/Rust/...
