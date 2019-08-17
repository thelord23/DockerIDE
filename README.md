# DockerIDE
This image contain IDE environment with vim git and more.
The file `ide.sh` contains an example of how to run this container
## vim plugins
[YankRing](https://github.com/vim-scripts/YankRing.vim) use `<F11>` to invoke yank history.
## Vim hotkeys
### Finding words under cursor
1. Find all words under cursor using `,g`.
2. Or search for word `,cg`. Use the hotkey then type the word and `<Enter>`. 
j. Then type `:copen` to see all results in the QuickFix window.
### Finding files
1. use `,f` to find files.
2. use `,tf` to find files. opens the file in new tab.
2. use `,e` to edit files. Similar to the above but does not respect configuration in `path`
4. use `,te` to edit files. Similar to the above but does not respect configuration in `path`. opens the file in new tab.
### escape the `/`
1. use `,/` to replace all `/` with `\/`
