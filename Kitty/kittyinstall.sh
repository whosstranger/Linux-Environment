#!/bin/bash

#Colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo -e "\n${yellowColour}[!]${endColour} ${purpleColour}By WhosStranger${endColour}\n"

trap ctrl_c INT

function ctrl_c(){
    echo -e "\n${yellowColour}[X]${endColour} ${purpleColour}Leaving...${endColour}"
    exit 0
}

echo -e "\n${yellowColour}[+]${endColour} ${blueColour} Installing required files${endColour}\n"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin > /dev/null 2>&1
echo -e "\n${yellowColour}[+]${endColour} ${blueColour} Setting up the required files${endColour}\n"
touch kitty
sudo mv kitty /usr/bin
sudo ln -f -s ~/.local/kitty.app/bin/kitty /usr/bin/kitty
touch kitty.conf
echo "enable_audio_bell no
 
include color.ini
 
font_family      HackNerdFont
font_size 12
 
disable_ligatures never
 
url_color #61afef
 
url_style curly
 
map alt+left neighboring_window left
map alt+right neighboring_window right
map alt+up neighboring_window up
map alt+down neighboring_window down
 
map f1 copy_to_buffer a
map f2 paste_from_buffer a
map f3 copy_to_buffer b
map f4 paste_from_buffer b
 
cursor_shape beam
cursor_beam_thickness 1.8
 
mouse_hide_wait 3.0
detect_urls yes
 
repaint_delay 10
input_delay 3
sync_to_monitor yes
 
map ctrl+shift+z toggle_layout stack
tab_bar_style powerline
 
inactive_tab_background #e06c75
active_tab_background #98c379
inactive_tab_foreground #000000
tab_bar_margin_color black
 
map ctrl+shift+enter new_window_with_cwd
map ctrl+shift+t new_tab_with_cwd
 
background_opacity 0.95
 
shell zsh" > kitty.conf
mv kitty.conf ~/.config/kitty
touch color.ini
echo "cursor_shape          Underline
cursor_underline_thickness 1
window_padding_width  20
 
# Special
foreground #a9b1d6
background #1a1b26
 
# Black
color0 #414868
color8 #414868
 
# Red
color1 #f7768e
color9 #f7768e
 
# Green
color2  #73daca
color10 #73daca
 
# Yellow
color3  #e0af68
color11 #e0af68
 
# Blue
color4  #7aa2f7
color12 #7aa2f7
 
# Magenta
color5  #bb9af7
color13 #bb9af7
 
# Cyan
color6  #7dcfff
color14 #7dcfff
 
# White
color7  #c0caf5
color15 #c0caf5
 
# Cursor
cursor #c0caf5
cursor_text_color #1a1b26
 
# Selection highlight
selection_foreground #7aa2f7
selection_background #28344a" > color.ini
mv color.ini ~/.config/kitty
echo -e "\n${yellowColour}[*]${endColour} ${blueColour}Configuration Completed${endColour}\n"


