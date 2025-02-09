# Pax

![Neovim monochrome colour scheme example](https://imgur.com/a/J5ZvWBe)

A neovim colourscheme designed for personal use, built around the following ideas:

- The majority of the text displayed in the editor should be monochrome
- A single highlight colour should be used to highlight the current focus
- Errors and warnings should be unmissable
- The code should be minimal and simple to understand

The scheme has been designed primarily to support dark mode usage, but light mode is also supported.

# Structure

This theme has been designed to be as easy to follow as possible. There are two files outside this one:

- colors/pax.lua: allows selecting the colourscheme through `:colorscheme pax`
- lua/pax.lua: defines the design tokens, the themes, applies the hl groups

# Usage

## Simplest

Nothing wrong with copy and paste, that's why there's so few files. Copy the `lua/pax.lua` file into your configuration, require the file in and call `setup`. This is easiest if you intend to play with the theme and want fast feedback.

## More Usable

Copy the whole folder structure into `${YOUR_NEOVIM_CONFIG}/pack/plugins/start/pax`. [An example of this can be seen here in my dotfiles](https://github.com/artcodespace/.dotfiles/tree/main/nvim/.config/nvim/pack/plugins/start). This approach allows you ease of editing the theme, with the added convenience of being able to select it with `:colorscheme pax`.

## Plugin managers

Although not designed as a plugin, it _may_ be possible to use this using Lazy/Packer. It's not the primary aim of this repo, but it will be investigated and if it's easily manageable, I'll add details here.
