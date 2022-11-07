# Dotfiles - BW Diving Theme
![Desktop preview](previews/preview.png)

## Table of Contents
- [Requirements](#requirements)
- [Optional](#optional)
- [Polybar](#polybar)
- [Alacritty](#alacritty)
- [Pfetch](#pfetch)


## Requirements
- Fonts
    - Roboto Mono Nerd Font ([AUR](https://aur.archlinux.org/packages/nerd-fonts-roboto-mono))
    - DejaVuSans Mono Nerd Font ([AUR](https://aur.archlinux.org/packages/nerd-fonts-dejavu-complete))
- [Polybar](https://github.com/polybar/polybar)
- [Alacritty](https://github.com/alacritty/alacritty)

## Optional
- [pfetch](https://github.com/dylanaraps/pfetch)

## Polybar

### [Left part](polybar/left.ini)
![Polybar Left](previews/polybar_preview_left.png)

### [Center part](polybar/center.ini)
![Polybar Center](previews/polybar_preview_center.png)

### [Right part](polybar/right.ini)
![Polybar Center](previews/polybar_preview_right.png)

## Alacritty 
![Alacritty preview](previews/alacritty.png)

Main visual takeaways from my alacritty config is using 
```yml
    opacity: 0.4
```
and 
```yml
    padding:
        x: 15
        y: 15
```

## Pfetch
![Pfetch preview](previews/pfetch.png)

I use following setup for pfetch in my `.zshrc`:
```bash
alias pfetch="PF_INFO=\"ascii os uptime pkgs memory shell editor wm\" pfetch"
```
You could also use enviromental variables instead of `alias`, but for me this makes it easier to find and change.
