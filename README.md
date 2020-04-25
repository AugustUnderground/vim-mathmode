# Math Mode for Vim

Plugin based on [Luke Smith's IPA vimling plugin](https://gitlab.com/LukeSmithxyz/vimling)
for inserting Latex style math characters in vim.

## Installation

Install with your favorite Plugin Manager. 
For [Vim Plug](https://github.com/junegunn/vim-plug) put the following in your `.vimrc` or `init.vim`

```
    Plug 'augustunderground/vim-mathmode'
```

## Configuration

Map a key to the `Toggle_math_mode` function. For example `$`, because this is
how math mode is started in Latex:

```
map <leader>$ :call Toggle_math_mode()<CR>a
```

By default `<leader>` is mapped to `\`, so after hitting `\` `$` you're able to insert
math symbols and Greek letters by typing `\lambda` for example.
