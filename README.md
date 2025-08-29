# Neovim basic configuration setup

## Purpose

This repo will serve as a starting point for users who want to install neovim but also want to skip the agitating process of installing dependencies, a package manager for nvim, a way to handle the LSP clients, etc.

## Core packages

- [Mason](https://github.com/mason-org/mason.nvim). Easily install and manage LSP servers, DAP servers, linters, and formatters.
- [Lazy](https://github.com/folke/lazy.nvim). A modern plugin manager, it gives us a really easy way to install any plugin and also an interface for manage them.
- [Telescope](https://github.com/nvim-telescope/telescope.nvim). A highly extendable fuzzy finder over lists.
  - Make sure you have installed `fzf`
  - Make sure you have installed `fg`
- [Conform](https://github.com/stevearc/conform.nvim). A lightweight yet powerful formatter plugin for Neovim. It allows you to use prettier on save.
- [Nvim Tree](https://github.com/nvim-tree/nvim-tree.lua). A modern file explorer written in Lua.
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter). The goal of this package is to provide some basic functionality such as highlighting based on it.

## Support packages

- [Comment](https://github.com/numToStr/Comment.nvim). A smart and powerful commenting plugin for neovim.
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim). This plugin adds indentation guides to Neovim. It uses Neovim's virtual text feature and no conceal.
- [Bufferline](https://github.com/akinsho/bufferline.nvim). A snazzy buffer line (with tabpage integration) for Neovim built using lua.
- [Catppuccin](https://github.com/catppuccin/nvim). Theme palette for the editor. It also provides theme support for other plugins in the Neovim ecosystem
- [Autoclose](https://github.com/m4xshen/autoclose.nvim). A plugin that auto pairs & closes brackets written in 100% Lua.
- [Which Key](https://github.com/folke/which-key.nvim). It helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
