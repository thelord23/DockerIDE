# DockerIDE
This image contain IDE environment with vim git and more.
The file `ide.sh` contains an example of how to run this container
## vim plugins
[YankRing](https://github.com/vim-scripts/YankRing.vim) use `<F11>` to invoke yank history.
## Vim hotkeys
### Finding words under cursor
1. In vim you can find all words under cursor using `,g`.
2. Then type `:copen` to see all results in the QuickFix window.
### Finding files`
1. use `,f` to find files.
2. use `,e` to edit files. Similar to the above but does not respect configuration in `path`
