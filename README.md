# SeaShell.nvim

A dark-themed Neovim colorscheme inspired by the muted, ocean-shell hues of your terminal. SeaShell blends deep blues and teals with warm sandy accents to create a calm yet contrast-rich editing experience.


## Table of Contents

- [SeaShell.nvim](#seashellnvim)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Screenshot](#screenshot)
  - [Installation](#installation)
    - [Packer.nvim](#packernvim)
    - [vim-plug](#vim-plug)
    - [Lazy.nvim](#lazynvim)
  - [Usage](#usage)
  - [Custom   Customization](#custom---customization)
  - [Contributing](#contributing)
  - [License](#license)

## Features

- **Balanced Contrast**  
  Carefully chosen foreground and background pairings for long coding sessions without eye strain.

- **Full 16-Color Terminal Support**  
  Terminal highlight groups automatically inherit SeaShell’s palette.

- **Syntax Harmony**  
  Dedicated colors for comments, strings, keywords, functions, types, and more.

- **Easy to Extend**  
  Written in Lua for simple tweaks and overrides.  

- **Vim Compatibility**  
  Includes a fallback `seashell.vim` for legacy Vim users.

## Screenshot

Todo


## Installation

### Packer.nvim

Add the following to your `plugins.lua` or packer configuration:

```lua
use {
  "gabrielfrimodig/seashell.nvim",
  config = function()
    -- Theme loads automatically on startup
    vim.cmd("colorscheme seashell")
  end
}
```

### vim-plug

Include in your `init.vim`:

```vim
Plug 'gabrielfrimodig/seashell.nvim'
autocmd VimEnter * colorscheme seashell
```

Then:
```vim
:PlugInstall
```

### Lazy.nvim

Add to your `lazy.lua` configuration:

```lua
{
  "gabrielfrimodig/seashell.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme seashell")
  end,
}
```

## Usage

Once installed, simply set:

```vim
colorscheme seashell
```

Or, in Lua:

```lua
vim.cmd("colorscheme seashell")
```

Newvim will automatically load the SeaShell palette and apply it to all built-in highlight groups.

## Custom   Customization

If you'd like to override or tweak specific highlight groups, you can call the setup function before loading:

```lua
require("seashell").palette.comment = "#a0b0c0"  -- Change comment color
require("seashell").load()
```

To override any group:
```lua
vim.api.nvim_set_hl(0, "Function", { fg = "#80d0e0", bold = true })
```

## Contributing

Contribution, issues, and feature requests are welcome!

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a pull request

## License

Todo