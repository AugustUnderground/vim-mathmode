# Math Mode for Vim

Plugin based on [Luke Smith's IPA vimling plugin](https://gitlab.com/LukeSmithxyz/vimling)
for inserting Latex style math characters in vim.

## Installation

Install with your favourite Plugin Manager. 
For _Vim Plug_ put the following in your `.vimrc` or `init.vim`

```
    Plug 'augustunderground/vim-mathmode'
```

You have to specify the whole URL, because this plugin is only on gitlab, not on github.

## Configuration

Map a key to the `Toggle_math_mode` function. For example `$`, because this is
how math mode is started in Latex:

```
map <leader>$ :call Toggle_math_mode()<CR>a
```

By default `<leader>` is mapped to `\`, so after hitting `\` `$` your able to insert
math symbols and greek letteres by typing `\lambda` for example.
