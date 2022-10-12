# NeoVim config

## Setup
0. Use the latest version of NVIM
1. This setup uses packer.nvim for the package manager, so first install packer.nvim by following the [official instructions](https://github.com/wbthomason/packer.nvim#quickstart)
2. Clone this repo into `~/.config/nvim`:
```
git clone https://github.com/kovey/nvim-config.git ~/.config/nvim
```
3. When you first enter `nvim`, you will see a bunch of mess because the plugins aren't installed yet, so run `:PackerInstall` to install the plugins

> Note that there is a chance that the download would timeout and `packer.nvim` would report install failed, in this case run `:PackerInstall` again
4. This setup uses the modern LSP system for language support, things like auto-complete, symbols tree, etc..., **which requires a LSP server outside the editor**. Fortunately [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) manages to configure most of the LSP server options for us, all we need to do is to install the LSP servers themselves:

In `lua/configs/autocomplete.lua`, line `108`, edit the list of LSP servers, a complete list of supported LSP servers is listed [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md). After that install the corresponding servers on your OS, auto-complete should pop up for supported languages now :)
5. Final step, smart highlighting using treesitter!

The default vim regex-based highlighting is pretty lame, for NVIM, [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) offered an advanced code highlighting that can make your code much cleaner

You can use the `:TSInstall <lang>` command to install a parser for a language

Alternatively, in `lua/configs/treesitter.lua`, line `6`, you can have a list of parsers that will be updated every time you use the `:TSUpdate` or `:TSUpdateSync` command (the latter is for synchronized updating), or you can just install all maintained parsers by uncommenting line `5` and commenting line `6`
