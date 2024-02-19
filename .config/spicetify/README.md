# [Spicetify](https://github.com/spicetify)
- Theme: eidolon
- Color-scheme: ghost

![Alt test](https://github.com/Vallen217/dotfiles/blob/main/screenshots/spicetify_ghost_1.png?raw=true)

![Alt test](https://github.com/Vallen217/dotfiles/blob/main/screenshots/spicetify_ghost_2.png?raw=true)

## Usage
1. Follow the installation instructions from [Spicetify](https://spicetify.app/docs/getting-started)

2. clone the directory containing the `color.ini` and `user.css` files:
```
git clone https://github.com/Vallen217/dotfiles/tree/main/.config/spicetify/Themes/eidolon
```

3. Place it into your spicetify config directory (`$HOME/.config/spicetify` for Linux):
```
mv <path_to_clone> <path_to_spicetify_config>/Themes/
```

4. Set your new spicetify theme:
```
spicetify config current_theme eidolon
spicetify config color_scheme ghost
spicetify config inject_css 1 inject_theme_js 1 replace_colors 1 overwrite_assets 1
spicetify apply
```
