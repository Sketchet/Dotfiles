#!/usr/bin/python
#
# bake.py
#
# this script is used to copy config files into a git repository
# for use of storing and sharing.
#
# written by: daylen 'sketchet' wolaniuk <daylen@protonmail.com>
from os import system

# files to bake (use relative paths from home directory)
# each item is a list with the first element being the file and the
# second element being the subdirectory you want it stored in
files = [[".Xresources", ""]
        ,[".gtkrc-2.0", ""]
        ,[".xinitrc", ""]
        ,[".config/bspwm/bspwmrc", ".config/bspwm"]
        ,[".config/colors/ice", ".config/colors"]
        ,[".config/fish/config.fish", ".config/fish"]
        ,[".config/fish/functions/fish_mode_prompt.fish", ".config/fish/functions"]
        ,[".config/fish/functions/fish_prompt.fish", ".config/fish/functions"]
        ,[".config/polybar/config", ".config/polybar"]
        ,[".config/polybar/launch.sh", ".config/polybar"]
        ,[".config/sxhkd/sxhkdrc", ".config/sxhkd"]
        ,[".config/user-dirs.dirs", ".config"]
        ,[".tmux.conf", ""]
        ]

# path to git repository location (local path)
repo = "~/src/dotfiles/"

# copy each of the files to the repository
for f in files:
    
    # prepend the home directory path
    path = "~/" + f[0]
    
    # make the destination directories
    system("mkdir -p " + repo + f[1])
    
    # use the 'cp' command to recursively copy each of the files
    system("cp -r " + path + " " + repo + f[0])
    

# notify user that job is done
print("Config files baked successfully.")
