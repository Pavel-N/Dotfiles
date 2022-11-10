# Dotfiles - BW Diving Theme
![Desktop preview](previews/preview.png)


## Table of Contents
- [TODO](#todo)
- [Required Fonts](#required-fonts)
- [Polybar](#polybar)
- [Alacritty](#alacritty)
- [Pfetch](#pfetch)
- [Picom](#picom)

<br>

## TODO
- Multiple monitor setup

## Required Fonts
- Roboto Mono Nerd Font ([AUR](https://aur.archlinux.org/packages/nerd-fonts-roboto-mono))
- DejaVuSans Mono Nerd Font ([AUR](https://aur.archlinux.org/packages/nerd-fonts-dejavu-complete))


## Polybar

### [Left part](polybar/left.ini)
![Polybar Left](previews/polybar_preview_left.png)

### [Center part](polybar/center.ini)
![Polybar Center](previews/polybar_preview_center.png)

### [Right part](polybar/right.ini)
![Polybar Center](previews/polybar_preview_right.png)

This part also uses the [`keyboard_backlight.sh`](polybar/keyboard_backlight.sh) script for getting keyboard backlight brightness, you propably want to change this line
```bash
PATH="/sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/brightness"
```
so the `PATH` points to proper file on your computer

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


## Picom
![Picom preview](previews/picom.mov)
Im using [picom-animations](https://github.com/dccsillag/picom) ([AUR](https://aur.archlinux.org/packages/picom-animations-git)) fork of Picom from [Daniel Csillag](https://github.com/dccsillag/), which allows nice and smooth animations as well as many other features.